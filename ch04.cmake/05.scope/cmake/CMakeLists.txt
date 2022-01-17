## \ch04_cmake\05.scope\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.0)
project(scope LANGUAGES C)
message("CMAKE_SOURCE_DIR = ${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR = ${CMAKE_BINARY_DIR}")
message("CMAKE_CURRENT_SOURCE_DIR = ${CMAKE_CURRENT_SOURCE_DIR}")
message("CMAKE_CURRENT_BINARY_DIR = ${CMAKE_CURRENT_BINARY_DIR}")
message("CMAKE_CURRENT_LIST_DIR = ${CMAKE_CURRENT_LIST_DIR}")
message("CMAKE_CURRENT_LIST_FILE = ${CMAKE_CURRENT_LIST_FILE}")
message("-----------add_subdirectory-----------")
add_subdirectory(mysub)
message("-----------include-----------")
include(mysub/CMakeLists.txt)

