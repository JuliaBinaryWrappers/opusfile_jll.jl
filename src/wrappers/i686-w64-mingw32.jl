# Autogenerated wrapper script for opusfile_jll for i686-w64-mingw32
export libopusfile, libopusurl

using Ogg_jll
using Opus_jll
using OpenSSL_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libopusfile`
const libopusfile_splitpath = ["bin", "libopusfile-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopusfile_path = ""

# libopusfile-specific global declaration
# This will be filled out by __init__()
libopusfile_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopusfile = "libopusfile-0.dll"


# Relative path to `libopusurl`
const libopusurl_splitpath = ["bin", "libopusurl-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopusurl_path = ""

# libopusurl-specific global declaration
# This will be filled out by __init__()
libopusurl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopusurl = "libopusurl-0.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"opusfile")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Ogg_jll.PATH_list, Opus_jll.PATH_list, OpenSSL_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Ogg_jll.LIBPATH_list, Opus_jll.LIBPATH_list, OpenSSL_jll.LIBPATH_list,))

    global libopusfile_path = normpath(joinpath(artifact_dir, libopusfile_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopusfile_handle = dlopen(libopusfile_path)
    push!(LIBPATH_list, dirname(libopusfile_path))

    global libopusurl_path = normpath(joinpath(artifact_dir, libopusurl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopusurl_handle = dlopen(libopusurl_path)
    push!(LIBPATH_list, dirname(libopusurl_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

