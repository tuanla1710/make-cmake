## \ch04_cmake\02.simple_target\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(myproject2 LANGUAGES C)
add_executable(a.out test1.c)
add_library(test-shared SHARED test2.c test3.c)
target_link_libraries(a.out test-shared)

