##/ch02.make/06.additionals/02.project2/libSrc/Makefile
.SUFFIXES:
SRCS := max.c min.c
OBJS := $(SRCS:.c=.o)
CFLAGS := -MMD -I ../include

%.o: %.c
	@echo "libSrc Compiling .... "
	gcc -c $(CFLAGS) $< -o $@

all:$(OBJS)

-include $(SRCS:.c=.d)

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	
	