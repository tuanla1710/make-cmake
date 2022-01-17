##/ch02.make/06.additionals/02.project2/02.Makefile
.SUFFIXES:
APP := appSrc
LIB := libSrc
CFLAGS := -I include -MMD

.PHONY: a.out $(APP) $(LIB)
a.out: $(APP) $(LIB)
	@echo "Linking ....."
	gcc $(APP)/*.o $(LIB)/*.o -o $@
	
$(APP):
	cd $@ && $(MAKE)
$(LIB):
	cd $@ && $(MAKE)

clean:
	-rm -r a.out
	-cd appSrc && make clean 
	-cd libSrc && make clean
	
	
	