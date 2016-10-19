modname := com
modeps 	:= 

MLFILES := \
	com

MLIFILES = \
	com

-include $(TOPDIR)/common.mk

RESULT	:= $(modname)

all: byte-code-library
-include $(OCAMLMAKEFILE)

install: 
	$(OCAMLFIND) install \
		-destdir $(INSTALLDIR) \
		-add \
		$(NAME) $(LIBINSTALL_FILES) 	

.PHONY: install
