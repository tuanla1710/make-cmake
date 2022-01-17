## \ch02.make\03.variables\12.Makefile
VAR = global
all: mom dad
all: ; @echo In all target VAR is $(VAR)

mom: ; @echo In mom target VAR is $(VAR)

dad: VAR = local 
dad: bab
dad: ; @echo In dad target VAR is $(VAR)

bab: ; @echo In bab target VAR is $(VAR)

m%: VAR = target that starts with m
b%: VAR = target that starts with b


