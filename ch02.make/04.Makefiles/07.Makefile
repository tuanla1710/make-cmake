## \ch02.make\04.Makefiles\07.Makefile
.SUFFIXES:
SRCS= test1.c test2.c test3.c
OBJS= test1.o test2.o test3.o 
CFLAGS= -g -O2 -Wall

a.out: $(OBJS)
	@echo $@ depends on $<
	$(LINK.c) $^ -o $@
	
%.o: %.c
	@echo $@ depends on $<
	$(COMPILE.c) $<
	
clean:
	$(RM) $(OBJS) a.out depend
	
include depend
depend:
	gcc -M $(SRCS) > depend
	
	