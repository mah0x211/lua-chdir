package = "chdir"
version = "scm-1"
source = {
    url = "git+https://github.com/mah0x211/lua-chdir.git",
}
description = {
    summary = "change current working directory.",
    homepage = "https://github.com/mah0x211/lua-chdir",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
}
build = {
    type = 'make',
    build_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        CFLAGS          = "$(CFLAGS)",
        WARNINGS        = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
        CPPFLAGS        = "-I$(LUA_INCDIR)",
        LDFLAGS         = "$(LIBFLAG)",
        CHDIR_COVERAGE  = "$(CHDIR_COVERAGE)",
    },
    install_variables = {
        LIB_EXTENSION   = "$(LIB_EXTENSION)",
        INST_LIBDIR     = "$(LIBDIR)",
    }
}
