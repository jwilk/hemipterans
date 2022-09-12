shell = $(SHELL)
all:
	echo This is normal variable reference: $(SEHLL)
	echo This is also normal variable reference: $(shell)
	echo This is invocation of the shell function: $(shell true)
