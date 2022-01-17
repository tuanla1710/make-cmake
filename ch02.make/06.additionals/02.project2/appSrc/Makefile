##/ch02.make/06.additionals/02.project2/appSrc/Makefile
.SUFFIXES:
SRCS := app.c 
OBJS := $(SRCS:.c=.o)
CFLAGS := -MMD -I ../include

%.o: %.c
	@echo "appSrc Compiling ...."
	gcc -c $(CFLAGS) $< -o $@

all:$(OBJS)

-include $(SRCS:.c=.d)

clean:
	-rm -f a.out $(OBJS)
	-rm -r $(shell find ./ -name "*.d")
	
	