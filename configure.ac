# ######################################################################
# These lines are required
# ######################################################################
AC_PREREQ(2.59)
AC_INIT([camlidl2], [v1.06.1], [lonnell@mekanisys.com])
AC_CONFIG_MACRO_DIR([m4])

# ######################################################################
# This just checks if some source file is present
# ######################################################################
AC_CONFIG_SRCDIR([compiler/enum.ml])

# default prefix is /usr/local
AC_PREFIX_DEFAULT(/usr/local)

# ######################################################################
# Check for OCaml  
# ######################################################################
AC_PROG_OCAML      
if test "x$OCAMLOPT" = "xno"; then
  AC_MSG_ERROR([you must install the OCaml native-code compiler])
fi

# ######################################################################
# Check for OCaml @OCAMLVERSION@ 
# ######################################################################
if expr "$OCAMLVERSION" '<' '4.02.0' > /dev/null ; then
  AC_MSG_ERROR([OCaml version 4.02.0 or later required])
fi

# ######################################################################
# Check for OCaml findlib
# ######################################################################
AC_PROG_FINDLIB
if test "x$OCAMLFIND" = "xno"; then
   AC_MSG_WARN([you must install OCaml findlib (the ocamlfind command)])
fi

# ######################################################################
# Check for C preprocessor
# ######################################################################
AC_PROG_CPP
if test "x$CPP" = "xno"; then
  AC_MSG_ERROR([a C pre-processor is required])
fi
AC_SUBST(CPP)

# ######################################################################
# Check for C compiler
# ######################################################################
AC_PROG_CC
if test "x$CC" = "xno"; then
  AC_MSG_ERROR([a C compiler is required])
fi

# ######################################################################
# Version tracking 
# ######################################################################
ver_maj=1
ver_min=06
ver_rev=1
AC_SUBST(ver_maj)
AC_SUBST(ver_min)
AC_SUBST(ver_rev)

# ######################################################################
# Debug builds            
# ######################################################################

# ######################################################################
# Configuration files
# ######################################################################
AC_CONFIG_FILES([Makefile
		 opam
		 META
		 compiler/version.ml
		 compiler/config.ml])

# ######################################################################
# Write configuration files
# ######################################################################
AC_OUTPUT
