EXECS = brightness.sh
DESKTOP = BrightBoi.desktop
PREFIX = /usr
BINDIR = $(PREFIX)/bin
DATADIR = $(PREFIX)/share

.PHONY: install uninstall

install:
	-mkdir -p $(BINDIR)
	-mkdir -p $(DATADIR)/applications
	cp --preserve=mode $(EXECS) $(BINDIR)/BrightBoiGUI
	cp $(DESKTOP) -t $(DATADIR)/applications
	-update-desktop-database

uninstall:
	rm -f $(DATADIR)/applications/$(DESKTOP)
	for exe in $(EXECS);\
		do rm -f $(BINDIR)/$$exe;\
		done

