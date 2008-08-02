package="lua-xmlreader"
version="dev-1"
source = {
   url = "",
}
description = {
   summary = "An implementation of the XmlReader API using libxml2",
   homepage = "http://asbradbury.org/projects/lua-xmlreader/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBXML2 = {
      header = "libxml2/libxml/xmlreader.h"
   }
}
build = {
   type = "builtin",
   modules = {
      xmlreader = {
         sources = {"xmlreader.c", "error.c"},
         libraries = {"xml2"},
         incdirs = {"$(LIBXML2_INCDIR)/libxml2"},
         libdirs = {"$(LIBXML2_LIBDIR)"}
      }
   }
}
