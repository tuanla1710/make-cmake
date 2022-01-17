##\ch02.make\06.additionals\01.project1\01.Makefile
.SUFFIXES:
SRCS = src/main.c src/func1.c src/func2.c
OBJS = $(SRCS:.c=.o)
CFLAGS = -MMD

%.o: %.c 
	@echo "Compiling ....."
	$(COMPILE.c) -I include $< -MF $*.d -o $@
	
a.out:$(OBJS)
	@echo "Linking ....."
	$(CC) $^ -o $@

.PHONY: clean
clean:
	-rm -f $(OBJS) a.out
	-rm -f $(shell find ./ -name "*.d")
	
-include $(SRCS:.c=.d)
# include depend
# depend: 
	# makedepend -I include -- $(SRCS)

