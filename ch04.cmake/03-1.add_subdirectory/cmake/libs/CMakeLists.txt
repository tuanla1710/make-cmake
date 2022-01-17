## \ch04_cmake\03-1.add_subdirectory\cmake\libs\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(libtest LANGUAGES C)
message(${PROJECT_NAME})
set(SRCS test2.c test3.c)
# set(SRCS libs/test2.c libs/test3.c)
add_library(test-static STATIC ${SRCS})
add_library(test-shared SHARED ${SRCS})

