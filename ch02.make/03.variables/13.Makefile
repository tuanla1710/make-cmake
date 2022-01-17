## \ch02.make\03.variables\05.Makefile
EMPTY = 
VAR = $(EMPTY)
$(if $(VAR),$(info if-part),$(info else-part))

VALUE = I'm not empty
$(if $(VALUE),$(info if-part),$(info else-part))

VAR=
# VAR = $(EMPTY)
ifdef VAR
$(info if-part...)
else
$(info else-part...)
endif

CURL := $(shell which curl)
ifndef CURL
$(error curl is missing)
# $(warning curl is missing)
endif

$(info This is the end of Makefile)

