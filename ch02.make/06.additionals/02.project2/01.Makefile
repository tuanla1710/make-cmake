##/ch02.make/06.additionals/02.project2/01.Makefile
.SUFFIXES:
VPATH := appSrc:libSrc
SRCS := app.c max.c min.c
OBJS := $(SRCS:.c=.o)
CFLAGS := -I include -MMD

%.o: %.c
	gcc -c $(CFLAGS) $< -o $@

a.out: $(OBJS)
	gcc $^ -o $@

-include $(SRCS:.c=.d)
clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find . -name "*.d")
	
	