##\ch04_cmake\09.add_custom_target\cmake\CMakeLists.txt

cmake_minimum_required(VERSION 3.16)
project(myproject09 LANGUAGES C)
message(${PROJECT_NAME})

set (SRCS test1.c test2.c test3.c)
add_executable (mytest ${SRCS})

add_custom_target (myclean
	COMMENT "clean all cmake generated files"
	COMMAND make clean
	COMMAND rm -r *
)

