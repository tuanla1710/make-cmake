## \ch04_cmake\08.targets\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(build_type LANGUAGES C)
message(${PROJECT_NAME})
set(CMAKE_BUILD_TYPE release)				
include_directories(${CMAKE_SOURCE_DIR}/include)
add_library(test test2.c test3.c)	
link_libraries(test)
add_executable(a.out test1.c)
add_subdirectory(libs)
target_link_libraries(a.out test-shared)
add_subdirectory(srcs)

