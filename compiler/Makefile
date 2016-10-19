# ------------------------------------------------------------------------------
# Configurations
# ------------------------------------------------------------------------------
modname := camlidl2
modeps 	:= 

# ------------------------------------------------------------------------------
# Files
# ------------------------------------------------------------------------------
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

MLIFILES := \
	config \
	utils \
	prefix \
	lexpr \
	cvttyp \
	variables \
	array \
	struct \
	enum \
	union 	\
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
	version

SOURCES 	= $(patsubst %, %.mli, $(MLIFILES))
SOURCES 	+= $(patsubst %, %.ml, $(MLFILES))

PRE_TARGETS	:= \
		linenum.ml \
		parser_midl.ml \
		lexer_midl.ml

RESULT	:= $(modname)
OCAMLFLAGS = -warn-error -31
OCAMLLDFLAGS = $(OCAMLFLAGS) 

# ------------------------------------------------------------------------------
# Common derivations
# ------------------------------------------------------------------------------
-include $(TOPDIR)/common.mk

all: byte-code

install:
	-cp $(RESULT) $(BINDIR)

# ------------------------------------------------------------------------------
# OCamlMakefile rules 
# ------------------------------------------------------------------------------
-include $(OCAMLMAKEFILE)
