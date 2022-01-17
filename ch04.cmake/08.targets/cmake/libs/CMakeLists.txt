## \ch04_cmake\08.targets\cmake\libs\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(libtest LANGUAGES C)
message(${PROJECT_NAME})
set(SRCS min.c max.c )
add_library(test-static STATIC ${SRCS})
add_library(test-shared SHARED ${SRCS})

