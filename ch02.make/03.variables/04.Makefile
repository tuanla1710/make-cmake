## \ch02.make\03.variables\04.Makefile
MOM = linux centos
MOM += centos
# MOM = $(MOM) centos 	

DAD := hello world
DAD += good
DAD := $(DAD) good
all:
	@echo $(MOM)
	@echo $(DAD)
	
	