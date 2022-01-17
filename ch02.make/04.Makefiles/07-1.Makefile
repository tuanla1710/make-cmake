## \ch02.make\04.Makefiles\07-1.Makefile
.SUFFIXES:
SRCS= test1.c test2.c test3.c
OBJS= test1.o test2.o test3.o 
CC=gcc
CFLAGS= -g -O2 -Wall

%.o: %.c
	$(CC) $(CFLAGS) -c $<
	
test: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f *.o test
	
include depend
depend:
	gcc -M $(SRCS) > depend
	
	