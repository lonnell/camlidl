TOPDIR := $(shell pwd)
export TOPDIR

INSTALLDIR := $(shell ocamlfind printconf destdir)
export INSTALLDIR 

NAME	:= camlidl2
export NAME

modules		:= \
		compiler \
		lib \
		runtime

src_prefix	= .
mod_dirs	= $(patsubst %, ${src_prefix}/%, $(modules))

autocruft	:= \
		aclocal.m4 \
		autom4te.cace \
		configure \
		config.log \
		config.status

all: $(modules)

clean:
	$(MAKE) TARGET=clean -C .

distclean:
	rm -rf $(autocruft)
	$(MAKE) TARGET=clean -C .

configure: configure.ac
	./autogen.sh
	./configure

install: meta $(modules)
	ocamlfind install -destdir $(INSTALLDIR) $(NAME) META
	$(MAKE) TARGET=install -C .

uninstall:
	ocamlfind remove $(NAME)

reinstall: uninstall
	$(MAKE) -C . install

# build our meta file by concatenating together
meta: META

$(mod_dirs):
	$(MAKE) -C $@ $(TARGET)

compiler: $(src_prefix)/compiler
runtime: $(src_prefix)/runtime
lib: $(src_prefix)/lib

# ordering dependencies

# phonies
.PHONY: all clean distclean configure meta install uninstall reinstall $(modules)
