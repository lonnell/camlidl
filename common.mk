OCAMLMAKEFILE 	= $(TOPDIR)/OCamlMakefile 
SOURCES 	= $(patsubst %, %.mli, $(MLIFILES))
SOURCES 	+= $(patsubst %, %.ml, $(MLFILES))
INCDIRS		:= $(patsubst %, ../%, $(modeps))
LIBDIRS		:= $(INCDIRS) 
CMIFILES	= $(wildcard *.cmi)
RANLIB		:= ranlib
