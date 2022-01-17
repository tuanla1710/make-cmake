## \ch03_libs\02.libStatic-make\appSrc\Makefile
##
#	To compile and create app.o in the directory.
#	And link them to create a.out together with static library
#	educafe@ubuntu2004 by Yoon, Daeil
##

.SUFFIXES:
INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
LIB_STATIC = ../libStatic
LDFLAGS = -L $(LIB_STATIC) -ltest

all: libtest.a a.out
.PHONY: all

a.out : app.o 
	@echo "Creating $@ with static library ...."
	$(CC) -o $@ $^ $(LDFLAGS)
app.o: app.c 
	@echo "Compiling $@ depending on $< ....."
	$(CC) $(CFLAGS) -c $< -o $@
libtest.a:
	$(MAKE) -C $(LIB_STATIC)

clean :
	-$(MAKE) -C $(LIB_STATIC) clean
	-rm -f a.out app.o depend
	
include depend
depend:
	gcc -M app.c -I$(INC_PATH) > depend 
