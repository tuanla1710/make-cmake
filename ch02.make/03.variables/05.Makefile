## \ch02.make\03.variables\05.Makefile
MOM = educafe
MOM += ubuntu
$(info $(MOM))

override MOM = root
MOM += educafe
# override MOM += educafe
all:
	@echo $(MOM)
	
	