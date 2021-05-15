#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "pangolin" for configuration "Debug"
set_property(TARGET pangolin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(pangolin PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Program Files/Pangolin/lib/pangolin.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS pangolin )
list(APPEND _IMPORT_CHECK_FILES_FOR_pangolin "C:/Program Files/Pangolin/lib/pangolin.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
