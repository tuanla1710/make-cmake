## \ch02.make\06.additionals\02.Makefile
.SUFFIXES:
SRCS = src/main.c src/func1.c src/func2.c
OBJS = $(SRCS:.c=.o)

a.out: $(OBJS)
	@echo "Linking ....."
	gcc $^ -o $@

%.o: %.c
	@echo "Compiling ....."
	gcc -c -MMD -I include $< -MF $(*D)/$(*F).d -o $(<D)/$(@F)

-include $(SRCS:.c=.d)

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	
	