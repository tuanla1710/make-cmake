## \ch03.libs\03.libShared-make\appSrc\Makefile

## Makefile : for Static/Shared/Dynamic Library Programming
##
##		educafe@ubuntu2004 by Yoon, Daeil
##
.SUFFIXES:
INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH) -MMD
LIB_SHARED = ../libShared
SRCS = app.c

all: libtest.so a.out

a.out : app.o
	@echo "Creating $@ with shared library...."
	$(CC) -o $@ $^ -L $(LIB_SHARED) -ltest
	$(shell . ./lib_export.sh)
app.o: app.c
	@echo "Compiling $@ depending on $<"
	# $(CC) $(CFLAGS) -c $<  -MF $(@:.o=.d) -o $@
	$(CC) -c $(CFLAGS) $< -o $@
libtest.so:
	make -C $(LIB_SHARED)
clean :
	-make -C $(LIB_SHARED) clean
	-rm -f a.out app.o *.d
	-rm -f lib_export.sh

-include $(SRCS:.c=.d)
