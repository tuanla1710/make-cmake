#!/bin/bash
CC=gcc
CFLAGS="-g -c -O2 -Wall"
SRCS="test1.c test2.c test3.c"
OBJS="test1.o test2.o test3.o"

echo "Project Build..."

echo ""
echo "Compile~~"
for cfile in ${SRCS}
do 
	$CC $CFLAGS $cfile
done

echo ""
echo "Linking~~"
$CC -o mytest ${OBJS}

echo ""
echo "Build Completed!!"

exit 0

