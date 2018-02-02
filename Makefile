prefix=/usr/local

#all: findmacs

findmacs: findmacs.c
	gcc findmacs.c -o findmacs -w

install: findmacs
	install -m 0755 findmacs $(prefix)/bin

uninstall:
	rm $(prefix)/bin/findmacs
clean:
	rm findmacs
