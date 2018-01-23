#
# GAPSyntaxTreeTools: Tools to handle GAP Syntax Trees
#
# This file is part of the build system of a GAP kernel extension.
# Requires automake.
#
ACLOCAL_AMFLAGS = -I cnf/m4

BINARCHDIR = bin/$(GAPARCH)
GAPINSTALLLIB = $(BINARCHDIR)/GAPSyntaxTreeTools.so

lib_LTLIBRARIES = GAPSyntaxTreeTools.la

GAPSyntaxTreeTools_la_SOURCES = src/GAPSyntaxTreeTools.c
GAPSyntaxTreeTools_la_CPPFLAGS = $(GAP_CPPFLAGS) -DCONFIG_H
GAPSyntaxTreeTools_la_LDFLAGS = -module -avoid-version
if SYS_IS_CYGWIN
GAPSyntaxTreeTools_la_LDFLAGS += -no-undefined -version-info 0:0:0 
GAPSyntaxTreeTools_la_LDFLAGS += -Wl,$(GAPROOT)/bin/$(GAPARCH)/gap.dll
endif

all-local: $(GAPINSTALLLIB)

$(GAPINSTALLLIB): GAPSyntaxTreeTools.la
	$(mkdir_p) $(BINARCHDIR)
if SYS_IS_CYGWIN
	cp .libs/GAPSyntaxTreeTools.dll $(GAPINSTALLLIB)
else
	cp .libs/GAPSyntaxTreeTools.so $(GAPINSTALLLIB)
endif

clean-local:
	rm -f $(GAPINSTALLLIB)

distclean-local:
	rm -rf bin/*

doc:
	($(GAPROOT)/bin/gap.sh -A makedoc.g)
