cmake_minimum_required(VERSION 3.13)

#add_definitions(-DLITEHTML_UTF8)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/litehtml/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/litehtml/include/litehtml")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/litehtml/src/gumbo/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/litehtml/src/gumbo/visualc/include")

disable_rtti()

if(MSVC)
	# macro redefinition
	disable_warning(4005)

	# conversion from 'type1' to 'type2', possible loss of data
	disable_warning(4242)

	# conversion from 'type1' to 'type2', possible loss of data
	disable_warning(4244)

	# conversion from 'size_t' to 'type', possible loss of data
	disable_warning(4267)
endif()

add_subdirectory(litehtml)

install_include("${CMAKE_CURRENT_SOURCE_DIR}/litehtml/include")

if(MSVC AND EMBEDDED_PDB)
	# embedd pdb
	set_target_properties(gumbo PROPERTIES COMPILE_OPTIONS "/Z7")
endif()

install_target(gumbo)
if(NOT EMBEDDED_PDB)
	install_static_debug_info(gumbo)
endif()

if(MSVC AND EMBEDDED_PDB)
	# embedd pdb
	set_target_properties(litehtml PROPERTIES COMPILE_OPTIONS "/Z7")
endif()

install_target(litehtml)
if(NOT EMBEDDED_PDB)
	install_static_debug_info(litehtml)
endif()
