## \ch02.make\03.variables\03.Makefile
MOM != echo root
DAD != getent passwd root
BAB = $(shell echo educafe)
POP = $(shell getent passwd educafe)
all:
	@echo $(MOM)
	@echo $(DAD)
	@echo $(BAB)
	@echo $(POP)
	
	
	