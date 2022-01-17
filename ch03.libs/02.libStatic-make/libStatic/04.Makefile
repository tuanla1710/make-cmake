## \ch03_libs\02.libStatic-make\libStatic\04.Makefile
.SUFFIXES:
CC = gcc
CFLAGS = -Wall -O2
ARFLAGS = -rcs
LIB_PATH = ../libSrc
VPATH = $(LIB_PATH)
LIB_SRCS = max.c min.c
LIB_OBJS = $(LIB_SRCS:.c=.o)

%.o : %.c
	@echo "Compiling $@ depending on $<"
	$(COMPILE.c) $< -o $@

all: libtest.a

libtest.a : $(LIB_OBJS)
	@echo "Building $@ library depenging on $^ ....."
	$(AR) $(ARFLAGS) $@ $^
	
clean :
	-rm -f $(LIB_OBJS) libtest.a depend
	
include depend
depend: $(LIB_SRCS)
	@echo $@ depends on $^
	gcc -M $^ > depend 


# VPATH searches are applied to prerequisites. And it should use automatic variables.
# That's why it needs $(LIB_SRCS) as a prerequisite to depend target

# -rm -f $(LIB_PATH)/$(LIB_OBJS)) is expanded as like 
# -rm -f $(LIB_PATH)/max.o min.o, which means that $(LIB_PATH/min.o is not remove)
# but instead min.o in the current directory is removed. 
# To add prefix $(LIB_PATH) to all .o file under it, it requires addprefix function inside make