cmake_minimum_required(VERSION 3.16)

set(This Example)

project(${This} C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Boost REQUIRED)

enable_testing()

add_subdirectory(googletest)

set(Sources 
    src/client.cpp    
    src/server.cpp
)


add_library(${This} STATIC ${Sources} ${Headers})

add_executable(Server src/server.cpp)
add_executable(Client src/client.cpp)


add_subdirectory(test)

target_link_libraries(Server
                      LINK_PUBLIC ${Boost_LIBRARIES}
                      boost_system pthread ssl crypto)

target_link_libraries(Client
                      LINK_PUBLIC ${Boost_LIBRARIES}
                      boost_system pthread ssl crypto)