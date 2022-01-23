# Autogenerated wrapper script for opusfile_jll for armv6l-linux-gnueabihf
export libopusfile, libopusurl

using Ogg_jll
using Opus_jll
using OpenSSL_jll
JLLWrappers.@generate_wrapper_header("opusfile")
JLLWrappers.@declare_library_product(libopusfile, "libopusfile.so.0")
JLLWrappers.@declare_library_product(libopusurl, "libopusurl.so.0")
function __init__()
    JLLWrappers.@generate_init_header(Ogg_jll, Opus_jll, OpenSSL_jll)
    JLLWrappers.@init_library_product(
        libopusfile,
        "lib/libopusfile.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libopusurl,
        "lib/libopusurl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
