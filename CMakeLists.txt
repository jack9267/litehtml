cmake_minimum_required(VERSION 3.13)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/../CMake-Modules/modules/")

project(litehtml C CXX)

# Embedded pdb in static libraries
set(EMBEDDED_PDB OFF)

include(j-common)
include(j-macros)
include(j-dependencies)

if(WIN32)
	add_definitions(-DUNICODE)
	add_definitions(-D_UNICODE)
endif()

add_definitions(-DLITEHTML_UTF8)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")

add_subdirectory(litehtml)
