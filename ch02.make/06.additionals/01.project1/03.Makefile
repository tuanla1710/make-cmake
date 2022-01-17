## \ch02.make\06.additionals\-1.project1\03.Makefile
.SUFFIXES:
VPATH = src
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

DEPDIR := deps

a.out: $(OBJS)
	@echo "Linking ....."
	gcc $^ -o $@

%.o: %.c | $(DEPDIR)
	@echo "Compiling ....."
	gcc -c -MMD -I include $< -MF $(DEPDIR)/$(*F).d -o $(@F)
	
$(DEPDIR): ; @mkdir -p $@

-include $(SRCS:%.c=$(DEPDIR)/%.d)
# DEPFILES := $(SRCS:%.c=$(DEPDIR)/%.d)
# $(DEPFILES):
# include $(wildcard $(DEPFILES))

clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	
	