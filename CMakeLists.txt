cmake_minimum_required(VERSION 3.0.2)

project(mujoco)

add_compile_options(-std=c++11 -Ofast)

find_package(Eigen3 3.3 REQUIRED NO_MODULE)

find_package(OpenGL REQUIRED)

find_package(GLEW REQUIRED)

set(SRC_FILES
    src/controller.cpp
    src/quadraticprogram.cpp
    src/robotmodel.cpp
    src/trajectory.cpp
)

set(MUJOCO_PATH
    ${CMAKE_CURRENT_SOURCE_DIR}/../.mujoco/mujoco200_linux
)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin/lib )
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin/lib )

message("Mujoco Path : " ${MUJOCO_PATH})

include_directories(
    include
 #   ${EIGEN3_INCLUDE_DIRS}
    ${GLEW_INCLUDE_DIRS}
 #   ${CMAKE_CURRENT_SOURCE_DIR}/qpOASES-3.2/include
 #   ${CMAKE_CURRENT_SOURCE_DIR}/qpOASES-3.2/include/qpOASES
 #   ${CMAKE_CURRENT_SOURCE_DIR}/rbdl/include
    ${MUJOCO_PATH}/include
    /usr/local/include/qpOASES
)

link_directories(
    #/usr/local/lib
    #/usr/lib
    #/usr/bin
    ${MUJOCO_PATH}/bin
    #/usr/include/eigen3/Eigen
)

file(GLOB LIB_MUJOCO ${MUJOCO_PATH}/bin/libmujoco200.so)

file(GLOB UI_SRC ${MUJOCO_PATH}/include/uitools.c)

add_library(dualarm_lib
    ${UI_SRC}
    ${SRC_FILES}
)

add_executable(dualarm_exe
    src/simulate.cpp
#    ${SRC_FILES}
)

target_link_libraries(dualarm_exe
    #${CMAKE_CURRENT_SOURCE_DIR}/qpOASES-3.2/include
    #${CMAKE_CURRENT_SOURCE_DIR}/qpOASES-3.2/include/qpOASES
    #${CMAKE_CURRENT_SOURCE_DIR}/rbdl/include
PUBLIC
    Eigen3::Eigen
    dualarm_lib
    -lrbdl
    -lrbdl_urdfreader
    -lpthread
    -lqpOASES
    ${MUJOCO_PATH}/bin/libglew.so
    ${MUJOCO_PATH}/bin/libglfw.so.3
    #GL
    ${LIB_MUJOCO}
    OpenGL::OpenGL
    OpenGL::EGL
    GLEW::GLEW
    ${GLEW_LIBRARIES}
    ${OPENGL_LIBRARIES}
)

install(TARGETS dualarm_exe DESTINATION bin)

#target_include_directories(dualarm_lib
#PUBLIC
#    ${CMAKE_SOURCE_DIR}/include
#)