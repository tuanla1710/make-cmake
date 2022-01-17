## \ch02.make\03.variables\04-1.Makefile
MOM = educafe
MOM += ubuntu
$(info $(MOM))

# MOM = $(DAD) ubuntu
MOM := $(DAD) ubuntu
DAD = hello
DAD += world
all:
	@echo $(MOM)
	@echo $(DAD)
	
	