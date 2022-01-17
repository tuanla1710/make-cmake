## \ch02.make\03.variables\06.Makefile
MOM = educafe
DAD = ubuntu
define NEWVAR
echo MOM
echo $(DAD)
endef

two-lines = echo MOM; echo $(DAD)
all:
	@echo $(NEWVAR)
	@echo $(two-lines)
	
	