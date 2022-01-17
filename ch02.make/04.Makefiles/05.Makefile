## \ch02.make\04.Makefiles\05.Makefile
.SUFFIXES:
SRCS = test1.c test2.c test3.c
OBJS = test1.o test2.o test3.o 
a.out: $(OBJS)
	gcc $^ -o $@
test1.o: test1.c 
	gcc -c $<
test2.o: test2.c 
	gcc -c $<
test3.o: test3.c 
	gcc -c $<
	# gcc -c $*.c
clean:
	rm -f *.o a.out depend
include depend
depend:
	gcc -M $(SRCS) > depend
	
	