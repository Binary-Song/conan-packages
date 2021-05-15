# Compute paths
get_filename_component( PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
SET( Pangolin_INCLUDE_DIRS "${PROJECT_CMAKE_DIR}/../../../include;C:/Program Files/Pangolin/include" )
SET( Pangolin_INCLUDE_DIR  "${PROJECT_CMAKE_DIR}/../../../include;C:/Program Files/Pangolin/include" )

# Library dependencies (contains definitions for IMPORTED targets)
if( NOT TARGET pangolin AND NOT Pangolin_BINARY_DIR )
  include( "${PROJECT_CMAKE_DIR}/PangolinTargets.cmake" )
  
  add_library(_glew STATIC IMPORTED)
  set_target_properties(_glew PROPERTIES
    IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/Pangolin/lib/glew.lib"
    IMPORTED_LOCATION_RELEASE "C:/Program Files/Pangolin/lib/glew.lib"
    IMPORTED_LOCATION_DEBUG   "C:/Program Files/Pangolin/lib/glewd.lib"
  )
  add_library(_zlib STATIC IMPORTED)
  set_target_properties(_zlib PROPERTIES
    IMPORTED_LOCATION_RELEASE "C:/Program Files/Pangolin/lib/zlibstatic.lib"
    IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/Pangolin/lib/zlibstatic.lib"
    IMPORTED_LOCATION_DEBUG   "C:/Program Files/Pangolin/lib/zlibstaticd.lib"
  )
  add_library(_libpng STATIC IMPORTED)
  set_target_properties(_libpng PROPERTIES
    IMPORTED_LOCATION_RELEASE "C:/Program Files/Pangolin/lib/libpng16_static.lib"
    IMPORTED_LOCATION_RELWITHDEBINFO "C:/Program Files/Pangolin/lib/libpng16_static.lib"
    IMPORTED_LOCATION_DEBUG   "C:/Program Files/Pangolin/lib/libpng16_staticd.lib"
  )
  add_library(_libjpeg STATIC IMPORTED)
  set_target_properties(_libjpeg PROPERTIES
    IMPORTED_LOCATION "C:/Program Files/Pangolin/lib/jpeg.lib"
  )
endif()

SET( Pangolin_LIBRARIES    pangolin )
SET( Pangolin_LIBRARY      pangolin )
SET( Pangolin_CMAKEMODULES D:/Software/Pangolin/src/../CMakeModules )
