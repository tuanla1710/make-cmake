## \ch02.make\04.Makefiles\09.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
SRCS= test1.c test2.c test3.c
OBJS= $(SRCS:.c=.o)
CC = gcc
CFLAGS = -g -O2 -Wall
a.out: $(OBJS)
	$(LINK.c) -o $@ $^
clean:
	rm -f $(OBJS) a.out depend

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

