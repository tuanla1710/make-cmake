## \ch02.make\03.variables\12.Makefile
SRCS = educafe.c ubuntu.c
OBJS = educafe.o ubuntu.o

all: $(OBJS)
	@echo done

%.o: %.c
	@echo $@ depends on $<

