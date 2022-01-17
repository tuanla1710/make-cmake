## \ch02.make\04.Makefiles\02.Makefile
a,out: test1.o test2.o test3.o 
	gcc test1.o test2.o test3.o -o a.out
test1.o: test1.c a.h b.h
	gcc -c test1.c
test2.o: test2.c a.h c.h
	gcc -c test2.c
test3.o: test3.c a.h b.h c.h
	gcc -c test3.c
clean:
	rm -f *.o test
