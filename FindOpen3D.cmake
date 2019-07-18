# - Try to find the Open3D library

if(TARGET Open3D::open3d)
    return()
endif()

find_package(Open3D HINTS ${CONAN_LIB_DIRS_OPEN3D}/CMake)

set(OPEN3D_FOUND TRUE)

mark_as_advanced(OPEN3D_LIBRARIES OPEN3D_INCLUDE_DIRS)

# Here we add an interface target `Open3D::open3d` that encapsulates
# the includedir and libraries, so when linked against, the paths don't
# collapse and dependencies can propagate transitively
add_library(Open3D::open3d INTERFACE IMPORTED)
set_target_properties(Open3D::open3d PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${Open3D_INCLUDE_DIRS}"
    INTERFACE_LINK_LIBRARIES "${Open3D_LIBRARIES}"
    INTERFACE_LINK_DIRECTORIES "${Open3D_LIBRARY_DIRS}"
)

