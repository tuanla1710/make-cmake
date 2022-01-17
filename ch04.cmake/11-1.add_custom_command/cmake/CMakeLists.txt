cmake_minimum_required(VERSION 3.16)
project("add_custom_command" LANGUAGES C)
set(CMAKE_VERBOSE_MAKEFILE true)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
set(LIB_TAR_LOC 
	${CMAKE_CURRENT_SOURCE_DIR}/include/a.h
)
set(LIB_DIRECTORY
  "${CMAKE_CURRENT_SOURCE_DIR}/include"
)
add_custom_target(header 
	DEPENDS ${LIB_DIRECTORY} ${LIB_TAR_LOC}
)
add_custom_command(OUTPUT ${LIB_TAR_LOC}
	COMMAND ${CMAKE_COMMAND} -E tar xzf "${CMAKE_CURRENT_SOURCE_DIR}/backup/headers.tar"
	WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/include/"
	COMMENT "Unpacking headers.tar----------------"
)
add_custom_command(OUTPUT ${LIB_DIRECTORY}
	COMMAND ${CMAKE_COMMAND} -E make_directory ${LIB_DIRECTORY}
	COMMENT "include directory built ------------"
)
add_executable(a.out test1.c test2.c test3.c)
add_dependencies(a.out header)
