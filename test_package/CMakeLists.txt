set(CMAKE_CXX_COMPILER_WORKS 1)
PROJECT(RTTRExample CXX)
cmake_minimum_required(VERSION 3.11)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(KEEP_RPATHS)

find_package(Open3D REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
ADD_EXECUTABLE(example main.cpp)
TARGET_LINK_LIBRARIES(example 
PUBLIC
    Open3D::open3d
)
