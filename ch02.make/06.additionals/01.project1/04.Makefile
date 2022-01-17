## \ch02.make\06.additionals\01.project1\04.Makefile
.SUFFIXES:
VPATH = src
SRCS = main.c func1.c func2.c
OBJS = $(SRCS:.c=.o)

DEPDIR := deps
OBJDIR := objs

a.out: $(OBJS)
	@echo "Linking ....."
	gcc $(addprefix $(OBJDIR)/, $^) -o $@

%.o: %.c | $(DEPDIR) $(OBJDIR)
	@echo "Compiling ....."
	gcc -c -MMD -I include $< -MF $(DEPDIR)/$(*F).d -o $(OBJDIR)/$(@F)
	
$(DEPDIR): ; @mkdir -p $@
$(OBJDIR): ; @mkdir -p $@

-include $(SRCS:%.c=$(DEPDIR)/%.d)
clean:
	-rm -f a.out $(OBJS)
	-rm -f $(shell find ./ -name "*.d")
	-rm -f $(shell find ./ -name "*.o")
	
	