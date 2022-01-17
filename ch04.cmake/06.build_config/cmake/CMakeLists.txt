## \ch04_cmake\06.build_config\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(build_type LANGUAGES C)
set(CMAKE_BUILD_TYPE release)				# try with change to debug or default
set(CMAKE_VERBOSE_MAKEFILE true)
include_directories(${CMAKE_SOURCE_DIR}/include)
add_compile_options(-Wall)
add_library(test SHARED test2.c test3.c)	# try with change to SHARED or STATIC
link_libraries(test)
add_compile_definitions(NO1=30 NO2=50)
# add_definitions(-DNO1=30 -DNO2=50)
# add_compile_options(-Wall)
if(${CMAKE_BUILD_TYPE} STREQUAL debug)
	add_executable(a.out_debug test1.c)
elseif(${CMAKE_BUILD_TYPE} STREQUAL release)
	add_executable(a.out_release test1.c)
else()
	add_executable(a.out test1.c)
endif()

message("Build Config : " ${CMAKE_BUILD_TYPE})

