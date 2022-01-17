## \ch02.make\02.basics\12.Makefile
.ONESHELL:
# .SHELLFLAGS += e
mom : 
	cd dir01
	echo hello world > file01
	cd dir02
	echo good morning > file02

