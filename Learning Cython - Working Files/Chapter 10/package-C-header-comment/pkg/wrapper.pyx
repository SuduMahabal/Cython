# wrapper.pyx
# distutils: sources = "pkg/extlib/external.c"
cimport extwrap
def calc(double x):
    return extwrap.f(x)

# distutils: include_dirs = wrap1, wrap2


