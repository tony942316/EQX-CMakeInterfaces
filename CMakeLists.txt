cmake_minimum_required(VERSION 3.28)

project(EQX-CMakeInterfaces
    VERSION 1.0.0
    DESCRIPTION "Common Flags As CMake Interface Targets"
    LANGUAGES CXX)

include(Interfaces.cmake)

add_executable(Main)
target_sources(Main PRIVATE Main.cpp)
target_link_libraries(Main PRIVATE EQX-Typical)

set_target_properties(Main PROPERTIES
    CXX_EXTENSIONS Off
    EXPORT_COMPILE_COMMANDS On)
