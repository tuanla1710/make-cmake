## \ch02.make\05.functions\06.Makefile
reverse = $(2) $(1)

call:
	@echo $(call reverse, world, hello)
	
