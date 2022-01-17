## \ch03.libs\04.liball-make-recursive\Makefile
## Recursive make Exercise
##
##		educafe@ubuntu2004 by Yoon, Daeil
##

INC_PATH = ../include
CC = gcc
CFLAGS = -Wall -O2 -I$(INC_PATH)
APPS = app_shared app_static 

APP_SRCS = appSrc
LIB_SHARED = libShared
LIB_STATIC = libStatic
LIB_SRCS = libSrc

OBJS := $(APP_SRCS)/*.o

APPS = app_shared app_static 

all: subdirs $(APPS)

app_shared : 
	@echo "Creating $@ with shared library...."
	$(CC) -o $@ $(OBJS) -L $(LIB_SHARED) -ltest

app_static:	
	@echo "Creating $@ with static library...."
	$(CC) -o $@ $(OBJS) -L $(LIB_STATIC) -ltest

.PHONY: subdirs $(APP_SRCS) $(LIB_SHARED) $(LIB_STATIC)
subdirs: $(APP_SRCS) $(LIB_SHARED) $(LIB_STATIC)
$(APP_SRCS):
	$(MAKE) --directory=$@
$(LIB_SHARED):
	$(MAKE) --directory=$@
$(LIB_STATIC):
	$(MAKE) --directory=$@
	
clean : 
	-rm -f app_shared app_static lib_export.sh
	for dir in $(APP_SRCS) $(LIB_SHARED) $(LIB_STATIC); do \
		$(MAKE) -C $$dir clean; \
	done