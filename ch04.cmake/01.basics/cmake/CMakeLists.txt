## \ch04_cmake\1.basics\cmake\CMakeLists.txt

cmake_minimum_required(VERSION 3.16)
project(myproject1)
# set(SRCS test1.c test2.c test3.c)
add_executable(a.out test1.c test2.c test3.c)
# add_executable(mytest ${SRCS})

