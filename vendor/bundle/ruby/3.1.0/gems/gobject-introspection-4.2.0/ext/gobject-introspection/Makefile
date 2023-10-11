
SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
V0 = $(V:0=)
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@ :)
ECHO = $(ECHO1:0=@ echo)
NULLCMD = :

#### Start of system configuration section. ####

srcdir = .
topdir = /Users/takigawaatsushi/.rvm/rubies/ruby-3.1.2/include/ruby-3.1.0
hdrdir = $(topdir)
arch_hdrdir = /Users/takigawaatsushi/.rvm/rubies/ruby-3.1.2/include/ruby-3.1.0/x86_64-darwin20
PATH_SEPARATOR = :
VPATH = $(srcdir):$(arch_hdrdir)/ruby:$(hdrdir)/ruby
prefix = $(DESTDIR)/Users/takigawaatsushi/.rvm/rubies/ruby-3.1.2
rubysitearchprefix = $(rubylibprefix)/$(sitearch)
rubyarchprefix = $(rubylibprefix)/$(arch)
rubylibprefix = $(libdir)/$(RUBY_BASE_NAME)
exec_prefix = $(prefix)
vendorarchhdrdir = $(vendorhdrdir)/$(sitearch)
sitearchhdrdir = $(sitehdrdir)/$(sitearch)
rubyarchhdrdir = $(rubyhdrdir)/$(arch)
vendorhdrdir = $(rubyhdrdir)/vendor_ruby
sitehdrdir = $(rubyhdrdir)/site_ruby
rubyhdrdir = $(includedir)/$(RUBY_VERSION_NAME)
vendorarchdir = $(vendorlibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
vendordir = $(rubylibprefix)/vendor_ruby
sitearchdir = $(DESTDIR)./.gem.20231011-90980-ztf0qy
sitelibdir = $(DESTDIR)./.gem.20231011-90980-ztf0qy
sitedir = $(rubylibprefix)/site_ruby
rubyarchdir = $(rubylibdir)/$(arch)
rubylibdir = $(rubylibprefix)/$(ruby_version)
sitearchincludedir = $(includedir)/$(sitearch)
archincludedir = $(includedir)/$(arch)
sitearchlibdir = $(libdir)/$(sitearch)
archlibdir = $(libdir)/$(arch)
ridir = $(datarootdir)/$(RI_BASE_NAME)
mandir = $(datarootdir)/man
localedir = $(datarootdir)/locale
libdir = $(exec_prefix)/lib
psdir = $(docdir)
pdfdir = $(docdir)
dvidir = $(docdir)
htmldir = $(docdir)
infodir = $(datarootdir)/info
docdir = $(datarootdir)/doc/$(PACKAGE)
oldincludedir = $(DESTDIR)/usr/include
includedir = $(SDKROOT)$(prefix)/include
runstatedir = $(localstatedir)/run
localstatedir = $(prefix)/var
sharedstatedir = $(prefix)/com
sysconfdir = $(prefix)/etc
datadir = $(datarootdir)
datarootdir = $(prefix)/share
libexecdir = $(exec_prefix)/libexec
sbindir = $(exec_prefix)/sbin
bindir = $(exec_prefix)/bin
archdir = $(rubyarchdir)


CC_WRAPPER = 
CC = gcc
CXX = g++
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static -framework CoreFoundation $(MAINLIBS)
empty =
OUTFLAG = -o $(empty)
COUTFLAG = -o $(empty)
CSRCFLAG = $(empty)

RUBY_EXTCONF_H = 
cflags   = -fdeclspec $(optflags) $(debugflags) $(warnflags)
cxxflags = 
optflags = -O3 -fno-fast-math
debugflags = -ggdb3
warnflags = -Wall -Wextra -Wdeprecated-declarations -Wdivision-by-zero -Wimplicit-function-declaration -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wshorten-64-to-32 -Wwrite-strings -Wold-style-definition -Wmissing-noreturn -Wno-constant-logical-operand -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter -Wno-unused-value -Wunused-variable -Wextra-tokens -Wundef
cppflags = 
CCDLFLAGS = -fno-common
CFLAGS   = $(CCDLFLAGS) -O3 -I/usr/local/opt/libyaml/include -I/usr/local/opt/libksba/include -I/usr/local/opt/readline/include -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl@1.1/include $(cflags) -fno-common -pipe -Wall -Wcast-align -Wformat=2 -Winit-self -Wlarger-than-65500 -Wmissing-declarations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wold-style-definition -Wpacked -Wp,-D_FORTIFY_SOURCE=2 -Wpointer-arith -Wundef -Wout-of-line-declaration -Wwrite-strings  $(ARCH_FLAG)
INCFLAGS = -I. -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/glib2-4.2.0/ext/glib2/../../lib -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/glib2-4.2.0/ext/glib2 -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I$(sitearchdir)  -I$(vendorarchdir)  -I/usr/local/Cellar/libffi/3.4.2/include -I/usr/local/Cellar/gobject-introspection/1.78.1/include/gobject-introspection-1.0 -I/usr/local/Cellar/glib/2.78.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.78.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre2/10.42/include -I/usr/local/Cellar/glib/2.78.0/include
DEFS     = 
CPPFLAGS = -DRUBY_GOBJECT_INTROSPECTION_COMPILATION -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE -D_DARWIN_UNLIMITED_SELECT -D_REENTRANT $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS) -fdeclspec  $(ARCH_FLAG)
ldflags  = -L. -L/usr/local/opt/libyaml/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl@1.1/lib -fstack-protector-strong -L/usr/local/lib -L/usr/local/Cellar/glib/2.78.0/lib -L/usr/local/opt/gettext/lib -L/usr/local/Cellar/gobject-introspection/1.78.1/lib
dldflags = -L/usr/local/opt/libyaml/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl@1.1/lib -Wl,-undefined,dynamic_lookup -Wl,-multiply_defined,suppress -Wl,-U,_g_rclosure_attach -Wl,-U,_g_rclosure_attach_gobject -Wl,-U,_g_rclosure_new -Wl,-U,_g_signal_flags_get_type -Wl,-U,_rbg_cGLibObject -Wl,-U,_rbg_cstr2rval -Wl,-U,_rbg_cstr2rval_free -Wl,-U,_rbg_define_method -Wl,-U,_rbg_define_singleton_method -Wl,-U,_rbg_filename_from_ruby -Wl,-U,_rbg_filename_to_ruby -Wl,-U,_rbg_glist2rval -Wl,-U,_rbg_glist2rval_with_type -Wl,-U,_rbg_gslist2rval -Wl,-U,_rbg_gslist2rval_with_type -Wl,-U,_rbg_inspect -Wl,-U,_rbg_is_bytes -Wl,-U,_rbg_is_object -Wl,-U,_rbg_is_value -Wl,-U,_rbg_mGLib -Wl,-U,_rbg_rval2cstr -Wl,-U,_rbg_rval2cstr_accept_nil -Wl,-U,_rbg_rval2cstr_accept_symbol -Wl,-U,_rbg_rval2filenamev -Wl,-U,_rbg_rval2glist -Wl,-U,_rbg_rval2gslist -Wl,-U,_rbg_rval2strv -Wl,-U,_rbg_rval2strv_dup -Wl,-U,_rbg_scan_options -Wl,-U,_rbg_strv2rval -Wl,-U,_rbg_to_array -Wl,-U,_rbg_variant_from_ruby -Wl,-U,_rbg_variant_to_ruby -Wl,-U,_rbgerr_define_gerror -Wl,-U,_rbgerr_gerror2exception -Wl,-U,_rbgerr_ruby_error_quark -Wl,-U,_rbgobj_add_relative -Wl,-U,_rbgobj_boxed_get -Wl,-U,_rbgobj_boxed_unown -Wl,-U,_rbgobj_constant_remap -Wl,-U,_rbgobj_convert_define -Wl,-U,_rbgobj_define_class -Wl,-U,_rbgobj_get_enum -Wl,-U,_rbgobj_get_flags -Wl,-U,_rbgobj_get_ruby_object_from_gobject -Wl,-U,_rbgobj_gobject_initialize -Wl,-U,_rbgobj_gtype_from_ruby -Wl,-U,_rbgobj_gtype_new -Wl,-U,_rbgobj_initialize_gvalue -Wl,-U,_rbgobj_initialize_object -Wl,-U,_rbgobj_instance_from_ruby_object -Wl,-U,_rbgobj_instance_unref -Wl,-U,_rbgobj_lookup_class -Wl,-U,_rbgobj_make_boxed -Wl,-U,_rbgobj_make_boxed_default -Wl,-U,_rbgobj_make_boxed_raw -Wl,-U,_rbgobj_make_enum -Wl,-U,_rbgobj_make_flags -Wl,-U,_rbgobj_object_add_relative -Wl,-U,_rbgobj_object_alloc_func -Wl,-U,_rbgobj_object_remove_relative -Wl,-U,_rbgobj_remove_relative -Wl,-U,_rbgobj_ruby_object_from_instance -Wl,-U,_rbgobj_ruby_object_from_instance2 -Wl,-U,_rbgutil_invoke_callback -Wl,-U,_rbgutil_on_callback_error -Wl,-U,_rbgutil_start_callback_dispatch_thread 
ARCH_FLAG = 
DLDFLAGS = $(ldflags) $(dldflags) $(ARCH_FLAG)
LDSHARED = $(CC) -dynamic -bundle
LDSHAREDXX = $(CXX) -dynamic -bundle
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = $(RUBY_BASE_NAME)
RUBY_SO_NAME = ruby.3.1
RUBYW_INSTALL_NAME = 
RUBY_VERSION_NAME = $(RUBY_BASE_NAME)-$(ruby_version)
RUBYW_BASE_NAME = rubyw
RUBY_BASE_NAME = ruby

arch = x86_64-darwin20
sitearch = $(arch)
ruby_version = 3.1.0
ruby = $(bindir)/$(RUBY_BASE_NAME)
RUBY = $(ruby)
ruby_headers = $(hdrdir)/ruby.h $(hdrdir)/ruby/backward.h $(hdrdir)/ruby/ruby.h $(hdrdir)/ruby/defines.h $(hdrdir)/ruby/missing.h $(hdrdir)/ruby/intern.h $(hdrdir)/ruby/st.h $(hdrdir)/ruby/subst.h $(arch_hdrdir)/ruby/config.h

RM = rm -f
RM_RF = rm -fr
RMDIRS = rmdir -p
MAKEDIRS = /usr/local/opt/coreutils/bin/gmkdir -p
INSTALL = /usr/local/opt/coreutils/bin/ginstall -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp
TOUCH = exit >

#### End of system configuration section. ####

preload = 
libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = rbgiversion.h gobject-introspection-enum-types.h gobject-introspection-enum-types.c ruby-gobject-introspection.pc
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lglib-2.0 -lintl -lgobject-2.0 -lgirepository-1.0  
ORIG_SRCS = gobject-introspection-enum-types.c rb-gi-arg-info.c rb-gi-arguments-in.c rb-gi-arguments-out.c rb-gi-arguments.c rb-gi-array-type.c rb-gi-base-info.c rb-gi-boxed-info.c rb-gi-callable-info.c rb-gi-callback-info.c rb-gi-callback.c rb-gi-constant-info.c rb-gi-constructor-info.c rb-gi-direction.c rb-gi-enum-info.c rb-gi-field-info.c rb-gi-flags-info.c rb-gi-function-info.c rb-gi-interface-info.c rb-gi-loader.c rb-gi-method-info.c rb-gi-object-info.c rb-gi-property-info.c rb-gi-registered-type-info.c rb-gi-repository.c rb-gi-signal-info.c rb-gi-struct-info.c rb-gi-transfer.c rb-gi-type-info.c rb-gi-type-tag.c rb-gi-union-info.c rb-gi-unresolved-info.c rb-gi-value-info.c rb-gi-vfunc-info.c rb-gobject-introspection.c
SRCS = $(ORIG_SRCS) gobject-introspection-enum-types.c rb-gi-arg-info.c rb-gi-arguments-in.c rb-gi-arguments-out.c rb-gi-arguments.c rb-gi-array-type.c rb-gi-base-info.c rb-gi-boxed-info.c rb-gi-callable-info.c rb-gi-callback-info.c rb-gi-callback.c rb-gi-constant-info.c rb-gi-constructor-info.c rb-gi-direction.c rb-gi-enum-info.c rb-gi-field-info.c rb-gi-flags-info.c rb-gi-function-info.c rb-gi-interface-info.c rb-gi-loader.c rb-gi-method-info.c rb-gi-object-info.c rb-gi-property-info.c rb-gi-registered-type-info.c rb-gi-repository.c rb-gi-signal-info.c rb-gi-struct-info.c rb-gi-transfer.c rb-gi-type-info.c rb-gi-type-tag.c rb-gi-union-info.c rb-gi-unresolved-info.c rb-gi-value-info.c rb-gi-vfunc-info.c rb-gobject-introspection.c
OBJS = gobject-introspection-enum-types.o rb-gi-arg-info.o rb-gi-arguments-in.o rb-gi-arguments-out.o rb-gi-arguments.o rb-gi-array-type.o rb-gi-base-info.o rb-gi-boxed-info.o rb-gi-callable-info.o rb-gi-callback-info.o rb-gi-callback.o rb-gi-constant-info.o rb-gi-constructor-info.o rb-gi-direction.o rb-gi-enum-info.o rb-gi-field-info.o rb-gi-flags-info.o rb-gi-function-info.o rb-gi-interface-info.o rb-gi-loader.o rb-gi-method-info.o rb-gi-object-info.o rb-gi-property-info.o rb-gi-registered-type-info.o rb-gi-repository.o rb-gi-signal-info.o rb-gi-struct-info.o rb-gi-transfer.o rb-gi-type-info.o rb-gi-type-tag.o rb-gi-union-info.o rb-gi-unresolved-info.o rb-gi-value-info.o rb-gi-vfunc-info.o rb-gobject-introspection.o
HDRS = $(srcdir)/gobject-introspection-enum-types.h $(srcdir)/rb-gi-conversions.h $(srcdir)/rb-gi-private-arg-info.h $(srcdir)/rb-gi-private-arguments-in.h $(srcdir)/rb-gi-private-arguments-out.h $(srcdir)/rb-gi-private-arguments.h $(srcdir)/rb-gi-private-array-type.h $(srcdir)/rb-gi-private-callback.h $(srcdir)/rb-gi-private-direction.h $(srcdir)/rb-gi-private-transfer.h $(srcdir)/rb-gi-private.h $(srcdir)/rb-gi-types.h $(srcdir)/rb-gobject-introspection.h $(srcdir)/rbgiversion.h
LOCAL_HDRS = 
TARGET = gobject_introspection
TARGET_NAME = gobject_introspection
TARGET_ENTRY = Init_$(TARGET_NAME)
DLLIB = $(TARGET).bundle
EXTSTATIC = 
STATIC_LIB = 

TIMESTAMP_DIR = .
BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR    = $(sitelibdir)$(target_prefix)
RUBYARCHDIR   = $(sitearchdir)$(target_prefix)
HDRDIR        = $(sitehdrdir)$(target_prefix)
ARCHHDRDIR    = $(sitearchhdrdir)$(target_prefix)
TARGET_SO_DIR =
TARGET_SO     = $(TARGET_SO_DIR)$(DLLIB)
CLEANLIBS     = $(TARGET_SO) $(TARGET_SO).dSYM
CLEANOBJS     = *.o  *.bak

all:    $(DLLIB)
static: $(STATIC_LIB)
.PHONY: all install static install-so install-rb
.PHONY: clean clean-so clean-static clean-rb

clean-static::
clean-rb-default::
clean-rb::
clean-so::
clean: clean-so clean-static clean-rb-default clean-rb
		-$(Q)$(RM_RF) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES) .*.time

distclean-rb-default::
distclean-rb::
distclean-so::
distclean-static::
distclean: clean distclean-so distclean-static distclean-rb-default distclean-rb
		-$(Q)$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		-$(Q)$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)
		-$(Q)$(RMDIRS) $(DISTCLEANDIRS) 2> /dev/null || true

realclean: distclean
install: install-so install-rb

install-so: $(DLLIB) $(TIMESTAMP_DIR)/.sitearchdir.time
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
clean-static::
	-$(Q)$(RM) $(STATIC_LIB)
install-rb: pre-install-rb do-install-rb install-rb-default
install-rb-default: pre-install-rb-default do-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
do-install-rb:
do-install-rb-default:
pre-install-rb-default:
	@$(NULLCMD)
$(TIMESTAMP_DIR)/.sitearchdir.time:
	$(Q) $(MAKEDIRS) $(@D) $(RUBYARCHDIR)
	$(Q) $(TOUCH) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .mm .cxx .cpp .o .S

.cc.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cc.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.mm.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.mm.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cxx.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cxx.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.cpp.S:
	$(ECHO) translating $(<)
	$(Q) $(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.c.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.c.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

.m.o:
	$(ECHO) compiling $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -c $(CSRCFLAG)$<

.m.S:
	$(ECHO) translating $(<)
	$(Q) $(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) $(COUTFLAG)$@ -S $(CSRCFLAG)$<

$(TARGET_SO): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)
	$(Q) $(POSTLINK)



###
install-so: install-headers
install-headers:
	$(INSTALL_DATA) $(srcdir)/rb-gobject-introspection.h $(RUBYARCHDIR)

install: install-pc
install-pc:
	if test -n "$(pkgconfigdir)"; then				\
	  $(MAKEDIRS) $(pkgconfigdir);					\
	  $(INSTALL_DATA) ruby-gobject-introspection.pc $(pkgconfigdir);\
	fi
