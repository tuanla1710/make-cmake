## \ch04_cmake\03-1.add_subdirectory\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project(myproject2 LANGUAGES C)
message(${PROJECT_NAME})
# include_directories(${CMAKE_SOURCE_DIR}/include)
add_executable(a.out test1.c)
include_directories(${CMAKE_SOURCE_DIR}/include)
# add_library(test-shared SHARED libs/test2.c libs/test3.c)
add_subdirectory(libs)
# include(libs/CMakeLists.txt)		# To execute libs/CMakeLists.txt file in current dir
# include(libs/file01)				# To execute file1 in current build directory
target_link_libraries(a.out test-shared)


