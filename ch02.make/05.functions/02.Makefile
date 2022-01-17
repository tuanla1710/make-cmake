## \ch02.make\05.functions\02.Makefile
objects := $(patsubst %.c,%.o,$(wildcard *.c))
dir:
	@echo $(dir src/main.c include)

notdir:
	@echo $(notdir src/main.c include)
	
suffix:
	@echo $(suffix src/main.c include)

addsuffix:
	@echo $(addsuffix .c, main func1)

addprefix:
	@echo $(addprefix src/, main.c func1.c)
	
wildcard:
	@echo $(objects)
	
	