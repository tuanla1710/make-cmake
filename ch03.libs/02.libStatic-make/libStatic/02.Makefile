## \ch03_libs\02.libStatic-make\libStatic\02.Makefile
##
# To build objects in the current directory.
# And link them to create static library libtest.a
# educafe@ubuntu2004 by Yoon, Daeil
##

.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2
ARFLAGS = -rcs
VPATH = ../libSrc
LIB_SRCS = max.c min.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

all: libtest.a

libtest.a : $(LIB_OBJS)
	@echo "Building $@ depending on $^ ....."
	$(AR) $(ARFLAGS) $@ $^
	
max.o: max.c
	@echo "Compiling $@ depending on $< ....."
	$(CC) -c $< -o $@
min.o: min.c
	@echo "Compiling $@ depending on $< ....."
	$(CC) -c $< -o $@
	
clean :
	-rm -f $(LIB_OBJS)
	-rm -f libtest.a
	-rm -f depend
	
include depend
depend: $(LIB_SRCS)
	@echo $@ depends on $^
	gcc -M $^ > depend 


# VPATH searches are applied to prerequisites. And it should use automatic variables.
# That's why it needs $(LIB_SRCS) as a prerequisite to depend target
