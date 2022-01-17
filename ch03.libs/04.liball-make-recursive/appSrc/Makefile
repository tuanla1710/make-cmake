## \ch03.libs\04.liball-make-recursive\appSrc\Makefile
## Recursive make Exercise
##
##		educafe@ubuntu2004 by Yoon, Daeil
##
.SUFFIXES:
CC = gcc
CFLAGS = -O2 -Wall -I $(INC_PATH) -MMD
INC_PATH = ../include
SRCS = app.c
OBJS = $(SRCS:.c=.o)

all : $(OBJS)

%.o: %.c
	@echo "Compiling $< to generate $@ ....."
	$(CC) $(CFLAGS) -c $< -MF $*.d  -o $@

clean :
	rm -rf *.o  *.d

-include $(SRCS:.c=.d)
