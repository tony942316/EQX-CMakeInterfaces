cmake_minimum_required(VERSION 3.28)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    message("MSVC Does Not Support Undefined Behavior Sanitizer!!!")
endif()

add_library(EQX-UBSan INTERFACE)
target_compile_options(EQX-UBSan INTERFACE -fsanitize=undefined)
target_link_options(EQX-UBSan INTERFACE -fsanitize=undefined)
if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    target_link_options(EQX-UBSan INTERFACE -static-libubsan)
endif()
