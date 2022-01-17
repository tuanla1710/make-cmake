## \ch02.make\03.variables\01.Makefile
MOM = educafe
DAD := $(MOM) ubuntu
# DAD := $(BAB) ubuntu
MOM = hello

BAB = educafe
POP = $(BAB) ubuntu
BAB = hello

BAB := $(BAB) world
all:
	@echo $(DAD)
	@echo $(POP)
	@echo $(BAB)
