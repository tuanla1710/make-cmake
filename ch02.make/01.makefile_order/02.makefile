.SUFFIXES:
all: a.out mysource
a.out :
	gcc mysource.c -o a.out

mysource :
	gcc mysource.c -o mysource
	
	