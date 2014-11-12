# call vimproc make from root
all: delimitMate vimproc

delimitMate:
	$(MAKE) -C bundle/delimitMate

vimproc:
	$(MAKE) -C bundle/vimproc
