## \ch02.make\04.Makefiles\12.Makefile - order-only prerequisites ($|)
baby: good | like love
	touch $@
	@echo $|
good:
	touch $@
love: 
	touch $@
like:
	touch $@
clean: 
	-rm baby love like good

# run make first, and then remove one of targets, and the run make again
# Here, good is a normal prerequisite while the others are order-only prerequisites.
# if the removed target is order-only prerequisites, 
# it just creates target and doesn't affect other targets when run make