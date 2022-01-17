## \ch02.make\03.basics\10.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
SRCS = educafe.c
SRCS += ubuntu.c
OBJS = $(SRCS:.c=.o)
a.out: $(OBJS)
	@echo a.out depends on $(OBJS)
	
	
	