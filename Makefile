PACKAGE=mimepipe
VERSION=0.1

prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
sysconfdir=${prefix}/etc
datadir=${prefix}/share
mandir=${datadir}/man
libexecdir=${exec_prefix}/lib
sharedstatedir=${prefix}/com

.PHONY: install install-bin install-libexec install-man \
		manpages clean dist spec rpm test

clean:
	$(RM) -r build

install: install-bin install-libexec install-man

install-bin:
	install -dm0755 $(DESTDIR)/$(bindir)
	ln -s $(libexecdir)/$(PACKAGE)/$(PACKAGE) $(DESTDIR)/$(bindir)/$(PACKAGE)

install-libexec:
	install -dm0755 $(DESTDIR)/$(libexecdir)/$(PACKAGE)
	cp -rf src/main/libexec/* $(DESTDIR)/$(libexecdir)/$(PACKAGE)

manpages: build/man/man1/$(PACKAGE).1

build/man/man1/$(PACKAGE).1: src/main/libexec/$(PACKAGE)
	mkdir -p build/man/man1
	pod2man --utf8 --center='User commans' --name=$(shell perl -e 'print uc $(PACKAGE)') --quotes=none $< $@

install-man: manpages
	install -dm0755 $(DESTDIR)/$(mandir)/man1
	cp -rf build/man/man1 $(DESTDIR)/$(mandir)/

spec: build/obs/$(PACKAGE).spec

build/obs/$(PACKAGE).spec: src/obs/$(PACKAGE).spec.m4
	mkdir -p $(dir $@)
	m4 -D__VERSION__=$(VERSION) <$< >$@

build/obs/$(PACKAGE)-$(VERSION).tar.xz::
	git archive --verbose --prefix=$(PACKAGE)-$(VERSION)/ -o $@ HEAD

dist: spec build/obs/$(PACKAGE)-$(VERSION).tar.xz

rpm: dist
	env -C build/obs/ osc build -k . --no-service --alternative-project home:urbic

test:
	@src/test/test
