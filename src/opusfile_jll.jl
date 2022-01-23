# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule opusfile_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("opusfile")
JLLWrappers.@generate_main_file("opusfile", UUID("4fb77979-f048-53ce-ae57-a45249826a33"))
end  # module opusfile_jll
