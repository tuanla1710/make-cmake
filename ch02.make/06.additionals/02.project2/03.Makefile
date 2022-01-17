##/ch02.make/06.additionals/02.project2/03.Makefile
.SUFFIXES:
CFLAGS := -I include -MMD
PROJDIRS := appSrc libSrc

.PHONY: a.out $(PROJDIRS)
a.out: $(PROJDIRS)
	@echo "Linking ....."
	# gcc $(foreach dir, $(PROJDIRS), $(dir)/*.o) -o $@
	# gcc $(shell echo $(foreach dir, $(PROJDIRS), $(dir)/*.o)) -o $@
	gcc $(foreach dir, $(PROJDIRS), $(wildcard $(dir)/*.o)) -o $@
	
$(PROJDIRS):
	cd $@ && $(MAKE)

clean:
	-rm -r a.out
	-cd appSrc && make clean 
	-cd libSrc && make clean
	
	