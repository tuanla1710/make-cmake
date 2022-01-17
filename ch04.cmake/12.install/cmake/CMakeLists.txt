##\ch04_cmake\12.install\cmake\CMakeLists.txt
cmake_minimum_required(VERSION 3.16)
project (myproject12 LANGUAGES C)
message(${CMAKE_PROJECT_NAME})

set (SRCS test1.c test2.c test3.c)
add_executable (a.out ${SRCS})

set(SRCS min.c max.c )
add_library(test-static STATIC ${SRCS})
add_library(test-shared SHARED ${SRCS})

set(CMAKE_INSTALL_PREFIX /home/educafe)

install (TARGETS a.out test-static test-shared
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR} 
)

# find /usr -name "a.out" -delete

