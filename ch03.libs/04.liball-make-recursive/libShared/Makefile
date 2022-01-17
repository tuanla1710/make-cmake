## \ch03.libs\04.liball-make-recursive\libShared\Makefile
## Makefile : for Static/Shared/Dynamic Library Programming
##
##		educafe@ubuntu2004 by Yoon, Daeil
##
.SUFFIXES:
CC = gcc
CFLAGS = -fPIC -MMD
LDFLAGS = -shared
VPATH=../libSrc/
LIB_SRCS = max.c min.c
LIB_OBJS = $(LIB_SRCS:.c=.o)
EXPORT_PATH = $(shell pwd)

all: libtest.so

libtest.so : $(LIB_OBJS)
	@echo "Building $@ depending on $^ ....."
	$(CC) $(LDFLAGS) $^ -o $@
	@echo "export LD_LIBRARY_PATH=$(EXPORT_PATH)" > ../lib_export.sh
%.o : %.c 
	@echo "Compiling $< to generate $@ ....."
	$(CC) -c $(CFLAGS) $< -MF $*.d -o $@
	
clean :
	-rm -f $(LIB_OBJS) libtest.so *.d
	
-include $(SRCS:.c=.d)
# include depend
# depend:
	# gcc -M $(LIB_SRCS) > depend


