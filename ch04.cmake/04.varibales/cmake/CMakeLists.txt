## \ch04_cmake\04.variables\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(variables LANGUAGES C)
set(SRCS test1.c test2.c test3.c)
message(STATUS "cmake Project Name: " ${CMAKE_PROJECT_NAME})
message("Project Name: " ${PROJECT_NAME})
add_executable(mytest ${SRCS})
add_library(test test2.c test3.c)
message("library libtest was successfully built")
# message(SEND_ERROR "Source files : " ${SRCS})
# message(FATAL_ERROR "Source files : " ${SRCS})
message("HOME directory : " $ENV{HOME})

