cmake_minimum_required(VERSION 3.28)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    include("${CMAKE_CURRENT_LIST_DIR}/ASan/ASan.cmake")
else ()
    include("${CMAKE_CURRENT_LIST_DIR}/ASan/ASan.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/LSan/LSan.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/TSan/TSan.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/UBSan/UBSan.cmake")
endif()

add_library(EQX-Sanitizers INTERFACE)

if (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
    target_link_libraries(EQX-Sanitizers INTERFACE EQX-ASan)
else ()
    target_link_libraries(EQX-Sanitizers INTERFACE EQX-ASan EQX-LSan EQX-UBSan)
endif()
