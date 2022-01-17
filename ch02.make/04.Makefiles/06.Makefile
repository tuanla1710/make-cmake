## \ch02.make\04.Makefiles\06.Makefile
.SUFFIXES:
SRCS= test1.c test2.c test3.c
OBJS= test1.o test2.o test3.o 
CFLAGS= -g -O2 -Wall

a.out: $(OBJS)
	$(LINK.c) $^ -o $@
test1.o: test1.c 
	$(COMPILE.c) $<
test2.o: test2.c 
	$(COMPILE.c) $<
test3.o: test3.c 
	$(COMPILE.c) $<
	
clean:
	rm -f $(OBJS) a.out depend
	
include depend
depend:
	gcc -M $(SRCS) > depend
	
	