//
// server.cpp
// ~~~~~~~~~~
//
// Copyright (c) 2003-2021 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include <cstdlib>
#include <functional>
#include <iostream>
#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>

using boost::asio::ip::tcp;

class session : public std::enable_shared_from_this<session>
{
public:
  session(boost::asio::ssl::stream<tcp::socket> socket)
    : socket_(std::move(socket))
  {
  }

  void start()
  {
    do_handshake();
  }

private:
  void do_handshake()
  {
    auto self(shared_from_this());
    socket_.async_handshake(boost::asio::ssl::stream_base::server, 
        [this, self](const boost::system::error_code& error)
        {
          if (!error)
          {
            do_read();
          }
        });
  }

  void do_read()
  {
    auto self(shared_from_this());
    socket_.async_read_some(boost::asio::buffer(data_),
        [this, self](const boost::system::error_code& ec, std::size_t length)
        {
          if (!ec)
          {
            do_write(length);
          }
        });
  }

  void do_write(std::size_t length)
  {
    auto self(shared_from_this());
    boost::asio::async_write(socket_, boost::asio::buffer(data_, length),
        [this, self](const boost::system::error_code& ec,
          std::size_t /*length*/)
        {
          if (!ec)
          {
            do_read();
          }
        });
  }

  boost::asio::ssl::stream<tcp::socket> socket_;
  char data_[1024];
};

class server
{
public:
  server(boost::asio::io_context& io_context, unsigned short port)
    : acceptor_(io_context, tcp::endpoint(tcp::v4(), port)),
      context_(boost::asio::ssl::context::sslv23)
  {
    context_.set_password_callback(std::bind(&server::get_password, this));
    
    context_.set_options(
        boost::asio::ssl::context::default_workarounds
        | boost::asio::ssl::context::no_sslv2
        // | boost::asio::ssl::context::no_tlsv1_3
        // | boost::asio::ssl::context::no_tlsv1_2
        | boost::asio::ssl::context::single_dh_use);

    context_.use_certificate_chain_file("certificates/certs/seccCertChain.pem");
    context_.use_private_key_file("certificates/privateKeys/secc.key", boost::asio::ssl::context::pem);
    SSL_CTX_set_ciphersuites(context_.native_handle(), "TLS_AES_256_GCM_SHA384::TLS_CHACHA20_POLY1305_SHA256:TLS_AES_128_GCM_SHA256");

    do_accept();
  }

private:
  std::string get_password() const
  {
    return "test";
  }

  void do_accept()
  {
    acceptor_.async_accept(
        [this](const boost::system::error_code& error, tcp::socket socket)
        {
          if (!error)
          {
            std::make_shared<session>(
                boost::asio::ssl::stream<tcp::socket>(
                  std::move(socket), context_))->start();
          }

          do_accept();
        });
  }

  tcp::acceptor acceptor_;
  boost::asio::ssl::context context_;
};

int main(int argc, char* argv[])
{
  try
  {
    boost::asio::io_context io_context;

    using namespace std; // For atoi.
    server s(io_context, atoi("1234"));
    std::cout << "Server started" << std::endl;

    io_context.run();
  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}