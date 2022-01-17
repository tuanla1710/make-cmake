## \ch04_cmake\08.targets\cmake\srcs\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(exam LANGUAGES C)
message(${PROJECT_NAME})
include_directories(${CMAKE_SOURCE_DIR}/include)
add_executable(exam2 exam2.c)

