.POSIX:

PREFIX = /usr/local

install:
	mkdir -p  "$(DESTDIR)$(PREFIX)/bin"
	cp selxkbmap "$(DESTDIR)$(PREFIX)/bin"
	cp snapchad "$(DESTDIR)$(PREFIX)/bin"
	cp termcwd "$(DESTDIR)$(PREFIX)/bin"
	cp termflex "$(DESTDIR)$(PREFIX)/bin"

symlink:
	mkdir -p  "$(DESTDIR)$(PREFIX)/bin"
	ln -sf "$(realpath selxkbmap)" "$(DESTDIR)$(PREFIX)/bin"
	ln -sf "$(realpath snapchad)" "$(DESTDIR)$(PREFIX)/bin"
	ln -sf "$(realpath termcwd)" "$(DESTDIR)$(PREFIX)/bin"
	ln -sf "$(realpath termflex)" "$(DESTDIR)$(PREFIX)/bin"

uninstall:
	rm -f "$(DESTDIR)$(PREFIX)/bin/selxkbmap"
	rm -f "$(DESTDIR)$(PREFIX)/bin/snapchad"
	rm -f "$(DESTDIR)$(PREFIX)/bin/termcwd"
	rm -f "$(DESTDIR)$(PREFIX)/bin/termflex"

.PHONY: symlink install uninstall
