## \ch02.make\04.Makefiles\04.Makefile
SRCS = test1.c test2.c test3.c
OBJS= test1.o test2.o test3.o 

a.out: $(OBJS)
	gcc $(OBJS) -o a.out
test1.o: test1.c 
	gcc -c test1.c
test2.o: test2.c 
	gcc -c test2.c
test3.o: test3.c 
	gcc -c test3.c
clean:
	rm -f *.o a.out depend

include depend
depend:
	gcc -M $(SRCS) > depend