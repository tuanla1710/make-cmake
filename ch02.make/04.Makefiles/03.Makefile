## \ch02.make\04.Makefiles\03.Makefile
a.out: test1.o test2.o test3.o 
	gcc test1.o test2.o test3.o -o a.out
test1.o: test1.c 
	gcc -c test1.c
test2.o: test2.c 
	gcc -c test2.c
test3.o: test3.c 
	gcc -c test3.c
clean:
	rm -f *.o test
dep:
	gccmakedep test1.c test2.c test3.c