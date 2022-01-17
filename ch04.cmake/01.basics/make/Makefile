## \ch04_cmake\1.basic\make\Makefile

OBJS = test1.o test2.o test3.o

mytest: $(OBJS)
	$(CC) -o $@ $^

test1.o: test1.c a.h b.h
test2.o: test2.c a.h c.h
test3.o: test3.c a.h b.h c.h

clean:
	rm $(OBJS) mytest
	
