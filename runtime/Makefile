#***********************************************************************
#*                                                                     *
#*                              CamlIDL                                *
#*                                                                     *
#*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *
#*                                                                     *
#*  Copyright 1999 Institut National de Recherche en Informatique et   *
#*  en Automatique.  All rights reserved.  This file is distributed    *
#*  under the terms of the GNU Library General Public License.         *
#*                                                                     *
#***********************************************************************

SOURCES	:= \
	idlalloc.c \
	comintf.c \
	comerror.c 

OBJS	:= $(patsubst %.c, %.o, $(SOURCES))

-include $(TOPDIR)/common.mk

TARGET	:= libcamlidl2.a

all: $(TARGET) 

$(TARGET): $(OBJS)
	- rm -f $@
	ar rc $@ $(OBJS)
	ranlib $@

install:
	-mkdir -p $(DESTDIR)/caml
	-cp camlidlruntime.h $(DESTDIR)/caml
	-cp libcamlidl2.a $(DESTDIR)

#clean:
#	rm -f *.a *.o

%.o: %.c
	$(OCAMLC) -ccopt "$(CFLAGS)" $<

-include $(OCAMLMAKEFILE)

$(OBJS): camlidlruntime.h comstuff.h

depend:
