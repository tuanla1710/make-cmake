## \ch02.make\05.functions\03.Makefile
SRCS := main.c func1.c func2.c
dirs := /home/educafe /home/educafe/lab
foreach:
	@echo $(foreach obj, $(subst :, , $(SRCS)), $(shell gcc -c $(obj)))
dirs:
	@echo $(foreach dir, $(dirs), $(dir)/*)
	
