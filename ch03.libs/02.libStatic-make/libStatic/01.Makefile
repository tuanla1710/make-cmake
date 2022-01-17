## \ch03_libs\02.libStatic-make\libStatic\01.Makefile
##
#	To use source files as where they are.	
# 	To build objects in the directory where their source files are.
#	And link them to create static library libtest.a in the current directory
#	educafe@ubuntu2004 by Yoon, Daeil
##

.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2
ARFLAGS = -rcs
LIB_PATH = ../libSrc
LIB_SRCS = ../libSrc/max.c ../libSrc/min.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

all: libtest.a

libtest.a : $(LIB_OBJS)
	@echo Building $@ depending on $^ ....."
	$(AR) $(ARFLAGS) $@ $^
	
../libSrc/max.o: ../libSrc/max.c
	@echo "Compiling $@ depending on $< ....."
	$(CC) -c $< -o $@
../libSrc/min.o: ../libSrc/min.c
	@echo "Compiling $@ depending on $< ....."
	$(CC) -c $< -o $@
	
clean :
	-rm -f $(LIB_OBJS)
	-rm -f libtest.a
	
include depend
depend:
	gcc -M $(LIB_SRCS) > depend 



