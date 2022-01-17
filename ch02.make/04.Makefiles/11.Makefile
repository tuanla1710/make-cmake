## \ch02.make\04.Makefiles\11.Makefile
.SUFFIXES:
.SUFFIXES: .c .o
SRCS = test1.c test2.c test3.c
OBJS = test1.o test2.o test3.o
a.out: $(OBJS)
	gcc -o $@ $^

.PHONY: clean
clean:
	-rm test
	-rm $(OBJS)

include depend
depend: $(SRCS)
	gcc -M $(SRCS) > depend

