## \ch02.make\03.variables\07.Makefile
all:
	@echo $$\(COMPILE.c\) = $(COMPILE.c)
	@echo $$\(AR\) $$\(ARFLAGS\) = $(AR) $(ARFLAGS)
	@echo $$\(LINK.c\) = $(LINK.c)
	@echo $$\(MAKE\) = $(MAKE)
	