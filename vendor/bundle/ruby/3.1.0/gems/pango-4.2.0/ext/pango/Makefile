
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
sitearchdir = $(DESTDIR)./.gem.20231011-90980-nt4xkv
sitelibdir = $(DESTDIR)./.gem.20231011-90980-nt4xkv
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
CFLAGS   = $(CCDLFLAGS) -O3 -I/usr/local/opt/libyaml/include -I/usr/local/opt/libksba/include -I/usr/local/opt/readline/include -I/usr/local/opt/zlib/include -I/usr/local/opt/openssl@1.1/include $(cflags) -fno-common -pipe -Wall -Wcast-align -Wformat=2 -Winit-self -Wlarger-than-65500 -Wmissing-declarations -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-noreturn -Wmissing-prototypes -Wnested-externs -Wold-style-definition -Wpacked -Wp,-D_FORTIFY_SOURCE=2 -Wpointer-arith -Wundef -Wout-of-line-declaration -Wwrite-strings      $(ARCH_FLAG)
INCFLAGS = -I. -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/cairo-1.17.12/ext/cairo/../../lib -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/cairo-1.17.12/ext/cairo -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/gobject-introspection-4.2.0/ext/gobject-introspection/../../lib -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/gobject-introspection-4.2.0/ext/gobject-introspection -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/glib2-4.2.0/ext/glib2/../../lib -I/Users/takigawaatsushi/Documents/comment-app/vendor/bundle/ruby/3.1.0/gems/glib2-4.2.0/ext/glib2 -I$(arch_hdrdir) -I$(hdrdir)/ruby/backward -I$(hdrdir) -I$(srcdir) -I$(sitearchdir)  -I$(vendorarchdir)  -I/usr/local/Cellar/libffi/3.4.2/include -I/usr/local/Cellar/pango/1.50.14/include/pango-1.0 -I/usr/local/Cellar/glib/2.78.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.78.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre2/10.42/include -I/usr/local/Cellar/glib/2.78.0/include -I/usr/local/Cellar/fribidi/1.0.13/include/fribidi -I/usr/local/Cellar/fontconfig/2.14.2/include -I/usr/local/opt/freetype/include/freetype2 -I/usr/local/opt/libpng/include/libpng16 -I/usr/local/Cellar/cairo/1.18.0/include/cairo -I/usr/local/Cellar/libx11/1.8.6/include -I/usr/local/Cellar/libxcb/1.16/include -I/usr/local/Cellar/libxau/1.0.11/include -I/usr/local/Cellar/libxdmcp/1.1.4/include -I/usr/local/Cellar/libxext/1.3.5/include -I/usr/local/Cellar/libxrender/0.9.11/include -I/usr/local/Cellar/pixman/0.42.2/include/pixman-1 -I/usr/local/Cellar/harfbuzz/8.2.1/include/harfbuzz -I/usr/local/Cellar/graphite2/1.3.14/include -I/usr/local/Cellar/xorgproto/2023.2/include -I/usr/local/Cellar/cairo/1.18.0/include/cairo -I/usr/local/opt/libpng/include/libpng16 -I/usr/local/Cellar/fontconfig/2.14.2/include -I/usr/local/opt/freetype/include/freetype2 -I/usr/local/Cellar/libx11/1.8.6/include -I/usr/local/Cellar/libxcb/1.16/include -I/usr/local/Cellar/libxau/1.0.11/include -I/usr/local/Cellar/libxdmcp/1.1.4/include -I/usr/local/Cellar/libxext/1.3.5/include -I/usr/local/Cellar/libxrender/0.9.11/include -I/usr/local/Cellar/pixman/0.42.2/include/pixman-1 -I/usr/local/Cellar/xorgproto/2023.2/include -I/usr/local/Cellar/libffi/3.4.2/include -I/usr/local/Cellar/pango/1.50.14/include/pango-1.0 -I/usr/local/Cellar/glib/2.78.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.78.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre2/10.42/include -I/usr/local/Cellar/glib/2.78.0/include -I/usr/local/Cellar/fribidi/1.0.13/include/fribidi -I/usr/local/Cellar/harfbuzz/8.2.1/include/harfbuzz -I/usr/local/opt/freetype/include/freetype2 -I/usr/local/opt/libpng/include/libpng16 -I/usr/local/Cellar/graphite2/1.3.14/include -I/usr/local/Cellar/cairo/1.18.0/include/cairo -I/usr/local/Cellar/fontconfig/2.14.2/include -I/usr/local/Cellar/libx11/1.8.6/include -I/usr/local/Cellar/libxcb/1.16/include -I/usr/local/Cellar/libxau/1.0.11/include -I/usr/local/Cellar/libxdmcp/1.1.4/include -I/usr/local/Cellar/libxext/1.3.5/include -I/usr/local/Cellar/libxrender/0.9.11/include -I/usr/local/Cellar/pixman/0.42.2/include/pixman-1 -I/usr/local/Cellar/xorgproto/2023.2/include -I/usr/local/Cellar/libffi/3.4.2/include -I/usr/local/Cellar/pango/1.50.14/include/pango-1.0 -I/usr/local/Cellar/glib/2.78.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.78.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre2/10.42/include -I/usr/local/Cellar/glib/2.78.0/include -I/usr/local/Cellar/fribidi/1.0.13/include/fribidi -I/usr/local/Cellar/harfbuzz/8.2.1/include/harfbuzz -I/usr/local/opt/freetype/include/freetype2 -I/usr/local/opt/libpng/include/libpng16 -I/usr/local/Cellar/graphite2/1.3.14/include -I/usr/local/Cellar/cairo/1.18.0/include/cairo -I/usr/local/Cellar/fontconfig/2.14.2/include -I/usr/local/Cellar/libx11/1.8.6/include -I/usr/local/Cellar/libxcb/1.16/include -I/usr/local/Cellar/libxau/1.0.11/include -I/usr/local/Cellar/libxdmcp/1.1.4/include -I/usr/local/Cellar/libxext/1.3.5/include -I/usr/local/Cellar/libxrender/0.9.11/include -I/usr/local/Cellar/pixman/0.42.2/include/pixman-1 -I/usr/local/Cellar/xorgproto/2023.2/include -I/usr/local/Cellar/libffi/3.4.2/include -I/usr/local/Cellar/gobject-introspection/1.78.1/include/gobject-introspection-1.0 -I/usr/local/Cellar/glib/2.78.0/include/glib-2.0 -I/usr/local/Cellar/glib/2.78.0/lib/glib-2.0/include -I/usr/local/opt/gettext/include -I/usr/local/Cellar/pcre2/10.42/include -I/usr/local/Cellar/glib/2.78.0/include
DEFS     = 
CPPFLAGS = -DHAVE_RB_CAIRO_H  -DHAVE_PANGO_FT2 -DHAVE_PANGO_ATTR_STRIKETHROUGH_COLOR_NEW -DHAVE_PANGO_ATTR_UNDERLINE_COLOR_NEW -DHAVE_PANGO_ATTR_ITERATOR_GET_ATTRS  -DRUBY_PANGO_COMPILATION -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE -D_DARWIN_UNLIMITED_SELECT -D_REENTRANT $(DEFS) $(cppflags)
CXXFLAGS = $(CCDLFLAGS) -fdeclspec      $(ARCH_FLAG)
ldflags  = -L. -L/usr/local/opt/libyaml/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl@1.1/lib -fstack-protector-strong -L/usr/local/lib -L/usr/local/Cellar/glib/2.78.0/lib -L/usr/local/opt/gettext/lib -L/usr/local/Cellar/harfbuzz/8.2.1/lib -L/usr/local/Cellar/pango/1.50.14/lib -L/usr/local/Cellar/cairo/1.18.0/lib -L/usr/local/Cellar/pango/1.50.14/lib -L/usr/local/Cellar/glib/2.78.0/lib -L/usr/local/opt/gettext/lib -L/usr/local/Cellar/harfbuzz/8.2.1/lib -L/usr/local/Cellar/cairo/1.18.0/lib -L/usr/local/Cellar/pango/1.50.14/lib -L/usr/local/Cellar/glib/2.78.0/lib -L/usr/local/opt/gettext/lib -L/usr/local/Cellar/harfbuzz/8.2.1/lib -L/usr/local/opt/freetype/lib -L/usr/local/Cellar/fontconfig/2.14.2/lib -L/usr/local/Cellar/glib/2.78.0/lib -L/usr/local/opt/gettext/lib -L/usr/local/Cellar/gobject-introspection/1.78.1/lib
dldflags = -L/usr/local/opt/libyaml/lib -L/usr/local/opt/libksba/lib -L/usr/local/opt/readline/lib -L/usr/local/opt/zlib/lib -L/usr/local/opt/openssl@1.1/lib -Wl,-undefined,dynamic_lookup -Wl,-multiply_defined,suppress -Wl,-U,_rb_gi_struct_get_raw -Wl,-U,_rbg_define_method -Wl,-U,_rbg_define_singleton_method -Wl,-U,_rbg_rval2cstr -Wl,-U,_rbgobj_add_relative -Wl,-U,_rbgobj_boxed_get -Wl,-U,_rbgobj_define_class -Wl,-U,_rbgobj_get_enum -Wl,-U,_rbgobj_initialize_object -Wl,-U,_rbgobj_make_boxed -Wl,-U,_rbgobj_make_boxed_raw -Wl,-U,_rbgobj_make_enum 
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
DISTCLEANFILES = ruby-pango.pc
DISTCLEANDIRS = 

extout = 
extout_prefix = 
target_prefix = 
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED)  -lgobject-2.0 -lglib-2.0 -lintl -lharfbuzz -lpango-1.0 -lcairo -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lintl -lharfbuzz -lcairo -lpangocairo-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lintl -lharfbuzz -lfreetype -lfontconfig -lpangoft2-1.0 -lglib-2.0 -lintl -lgobject-2.0 -lgirepository-1.0  
ORIG_SRCS = rb-pango-attr-iterator.c rb-pango-attr-list.c rb-pango-attribute.c rb-pango-scale.c rb-pango.c
SRCS = $(ORIG_SRCS) 
OBJS = rb-pango-attr-iterator.o rb-pango-attr-list.o rb-pango-attribute.o rb-pango-scale.o rb-pango.o
HDRS = $(srcdir)/rb-pango-conversions.h $(srcdir)/rb-pango-private.h $(srcdir)/rb-pango.h
LOCAL_HDRS = 
TARGET = pango
TARGET_NAME = pango
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
	$(INSTALL_DATA) $(srcdir)/rb-pango.h $(RUBYARCHDIR)
	$(INSTALL_DATA) $(srcdir)/rb-pango-conversions.h $(RUBYARCHDIR)

install: install-pc
install-pc:
	if test -n "$(pkgconfigdir)"; then			\
	  $(MAKEDIRS) $(pkgconfigdir);				\
	  $(INSTALL_DATA) ruby-pango.pc $(pkgconfigdir);	\
	fi
