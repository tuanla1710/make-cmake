## \ch02.make\03.Makefiles\10.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
CC = gcc
CFLAGS = -Wall -O2 -g
SRCS1 = test1.c test2.c test3.c
SRCS2 = exam2.c test2.c
SRCS3 = exam3.c test3.c
OBJS1 = $(SRCS1:.c=.o)
OBJS2 = $(SRCS2:.c=.o)
OBJS3 = $(SRCS3:.c=.o)
TARGETS = a.out exam2 exam3
all: $(TARGETS)
a.out: $(OBJS1)
	$(CC) -o $@ $^
exam2: $(OBJS2)
	$(CC) -o $@ $^
exam3: $(OBJS3)
	$(CC) -o $@ $^
clean:
	-rm $(OBJS1) $(OBJS2) $(OBJS3) 
	-rm $(TARGETS)
include depend
depend: 
	gcc -M $(SRCS1) $(SRCS2) $(SRCS3) > depend
