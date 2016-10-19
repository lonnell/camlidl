OCAMLMAKEFILE 	= $(TOPDIR)/OCamlMakefile 
SOURCES		= $(patsubst %, %.mly, $(MLYFILES))
SOURCES		+= $(patsubst %, %.mll, $(MLLFILES))
SOURCES 	+= $(patsubst %, %.mli, $(MLIFILES))
SOURCES 	+= $(patsubst %, %.ml, $(MLFILES))
INCDIRS		:= $(patsubst %, ../%, $(modeps))
LIBDIRS		:= $(INCDIRS) 
CMIFILES	= $(wildcard *.cmi)
