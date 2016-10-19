OCAMLMAKEFILE 	= $(TOPDIR)/OCamlMakefile 
SOURCES 	+= $(patsubst %, %.ml, $(MLFILES))
SOURCES 	+= $(patsubst %, %.mli, $(MLIFILES))
INCDIRS		:= $(patsubst %, ../%, $(modeps))
LIBDIRS		:= $(INCDIRS) 
CMIFILES	= $(wildcard *.cmi)
