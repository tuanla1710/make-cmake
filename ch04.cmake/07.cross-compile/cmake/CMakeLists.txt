## \ch04_cmake\07.cross-compile\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.7)
project("test" LANGUAGES C)
# set(CMAKE_TOOLCHAIN_FILE myToolchain.cmake)
# set(CMAKE_SYSTEM_NAME Linux)
# set(CMAKE_SYSTEM_PROCESSOR ARM)
# set(CMAKE_C_COMPILER /usr/bin/arm-linux-gnueabihf-gcc-9)
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_BUILD_TYPE debug)
# set(CMAKE_C_COMPILER gcc)
add_executable(mytest test1.c test2.c test3.c)

