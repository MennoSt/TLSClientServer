cmake_minimum_required(VERSION 3.16)

set(This ExampleTests)

set(Sources 
    ContextTests.cpp)

add_executable(${This} ${Sources})

target_link_libraries(${This} PUBLIC 
    gmock
    gtest_main
    Example)

target_include_directories(${This} PUBLIC
    ../src
)

add_test(
    NAME ${This}
    COMMAND ${This}
)