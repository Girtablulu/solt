PREFIX ?= /usr
COMPLETION ?= $(PREFIX)/share/bash-completion/completions
DOCDIR ?= $(PREFIX)/share/doc/solt

all:
	@echo Run \'make install\' to install solt.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@mkdir -p $(DESTDIR)$(COMPLETION)
	@mkdir -p $(DESTDIR)$(PREFIX)/share/solt
	@cp -p solt $(DESTDIR)$(PREFIX)/bin/solt
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@cp -p solt-completion.bash $(DESTDIR)$(COMPLETION)/solt
	@cp -p solt_common $(DESTDIR)$(PREFIX)/share/solt/solt_common
	@cp -p solt_conf $(DESTDIR)$(PREFIX)/share/solt/solt_conf
	@cp -p solt_functions $(DESTDIR)$(PREFIX)/share/solt/solt_functions
	@cp -p solt_help $(DESTDIR)$(PREFIX)/share/solt/solt_help
	@cp -p solt_repo $(DESTDIR)$(PREFIX)/share/solt/solt_repo
	@cp -p solt_log $(DESTDIR)$(PREFIX)/share/solt/solt_log
	@cp -p solt_solbuild $(DESTDIR)$(PREFIX)/share/solt/solt_solbuild
	@cp -p solt_source $(DESTDIR)$(PREFIX)/share/solt/solt_source
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/solt

$(info Solt Succefully installed)
