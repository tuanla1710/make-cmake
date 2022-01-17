## \ch02.make\05.functions\05.Makefile
contents := $(shell getent passwd educafe)
path := $(shell echo $(PATH))
$(info $(contents) 	This is from $(origin contents))
$(info $(path) 	This is from $(origin path))

shell:
	@echo $(contents)
	@echo $(path)
	
