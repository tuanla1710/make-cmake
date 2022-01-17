## \ch02.make\05.functions\01.Makefile
VAR=$(subst ee,EE,feet on the street)
OBJS := $(patsubst %.c,%.o,x.c.c bar.c)
SRCS := main.c func1.c func2.c a.h b.h c.h
VPATH := src:../headers
a.out:
	@echo $(VAR)
	@echo $(OBJS)

main:
	@echo $(filter %c, $(SRCS))

path:
	@echo $(subst :, , $(VPATH))
	
