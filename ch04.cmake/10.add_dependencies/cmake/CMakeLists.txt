##\ch04_cmake\10.add_custom_command\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(myproject10 LANGUAGES C)
message(${PROJECT_NAME})
set(CMAKE_VERBOSE_MAKEFILE false)
add_library(libs a.c)
add_dependencies(libs files)

add_custom_command(OUTPUT file01
	COMMAND ${CMAKE_COMMAND} -E touch file01
	COMMENT "add_custom_command OUTPUT being executed"
)

add_custom_command(TARGET libs PRE_LINK
	COMMAND ${CMAKE_COMMAND} -E touch file02 
	COMMENT "add_custom_command TARGET being executed"
)

add_custom_target(files DEPENDS file01)

