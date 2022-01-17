##\ch04_cmake\11.add_custom_command\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(myproject11 LANGUAGES C)
message(${PROJECT_NAME})
# set(CMAKE_VERBOSE_MAKEFILE true)

add_executable(a.out test1.c )
add_custom_command(OUTPUT test2.c
	COMMAND a.out
)
add_executable(task1 test2.c)
