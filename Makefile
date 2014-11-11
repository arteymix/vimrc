# call vimproc make from root
all: vimproc delimitMate

vimproc:
	$(MAKE) -C bundle/vimproc

delimitMate:
	$(MAKE) -C bundle/delimitMate


