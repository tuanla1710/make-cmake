## \ch02.make\04.Makefiles\08.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
SRCS= test1.c test2.c test3.c
OBJS= test1.o test2.o test3.o 
# CC = gcc
CFLAGS = -g -O2 -Wall
.c.o: 
	$(CC) -c $(CFLAGS) $<
a.out: $(OBJS)
	$(CC) -o $@ $^
clean:
	rm -f $(OBJS) a.out depend

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

