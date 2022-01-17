## \ch02.make\03.variables\02.Makefile
MOM ?= educafe
DAD ?= ubuntu
ifndef BAB
BAB := linux
endif

all:
	@echo $(MOM)
	@echo $(DAD)
	@echo $(BAB)
	
