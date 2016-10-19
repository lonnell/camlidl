modname := camlidl2
modeps 	:= 

MLFILES := \
	config \
	utils \
	clflags \
	prefix \
	lexpr \
	cvttyp \
	variables \
	array \
	struct \
	enum \
	union \
	cvtval \
	structdecl \
	enumdecl \
	uniondecl \
	typedef \
	funct \
	constdecl \
	intf \
	file \
	predef \
	linenum \
	parse_aux \
	parser_midl \
	lexer_midl \
	parse \
	fixlabels \
	normalize \
	version \
	main

MLIFILES = \
	Trig_float

MLYFILES = \
	parser_midl

MLLFILES = \
	linenum \
	lexer_midl

TARGET	:= $(modname)

-include $(TOPDIR)/common.mk

#all: byte-code-library

-include $(OCAMLMAKEFILE)

install:
	$(OCAMLFIND) install \
		-destdir $(INSTALLDIR) \
		-add \
		$(NAME) $(INSTFILES) 	
