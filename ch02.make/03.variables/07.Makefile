## \ch02.make\03.variables\05.Makefile
MOM := educafe
DAD = ubuntu
define NEWVAR
echo MOM
echo $(DAD)
endef

undefine MOM 
undefine DAD
undefine NEWVAR

$(info $(origin MOM))
$(info $(origin DAD))
$(info $(origin NEWVAR))
all:
	@echo $(MOM) $(DAD) $(NEWVAR)
	
	
	