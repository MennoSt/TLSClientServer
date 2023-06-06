cmake_minimum_required(VERSION 3.16)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Boost REQUIRED)

set(Sources 
    src/client.cpp    
    src/server.cpp
)

add_executable(Server src/tls/server.cpp)
add_executable(Client src/tls/client.cpp)

target_link_libraries(Server
                      LINK_PUBLIC ${Boost_LIBRARIES}
                      boost_system pthread ssl crypto)

target_link_libraries(Client
                      LINK_PUBLIC ${Boost_LIBRARIES}
                      boost_system pthread ssl crypto)