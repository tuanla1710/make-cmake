# Description: A simple Makefile to compile the shared library and the main program

# compiler
CC=gcc

# flags
CFLAGS=-I.

# dependencies
DEPS = lib/hello.h

# object files	
OBJ = main.o

# libraries
LIBS=-L. -lhello

# compile the shared library
libhello.so: lib/hello.o
	$(CC) -shared -o $@ $^
	
# compile the object files
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

# compile the main program
hello: $(OBJ) libhello.so
	$(CC) -o $@ $(OBJ) $(LIBS) -Wl,-rpath=.

# clean the object files
.PHONY: clean

# clean the object files
clean:
	rm -f *.o hello libhello.so lib/hello.o

# distclean 
.PHONY: distclean

# clean the object files
distclean: clean
	rm -f *~ 
	rm -f lib/*~ 
	rm -f lib/*/*~ 
	rm -f lib/*/*/*~ 
	rm -f lib/*/*/*/*~ 
	rm -f lib/*/*/*/*/*~ 
	rm -f lib/*/*/*/*/*/*~ 
	rm -f lib/*/*/*/*/*/*/*~ 
	rm -f lib/*/*/*/*/*/*/*/*~ 
	rm -f lib/*/*/*/*/*/*/*/*/*~ 

