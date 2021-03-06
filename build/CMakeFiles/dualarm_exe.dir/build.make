# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build

# Include any dependencies generated for this target.
include CMakeFiles/dualarm_exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dualarm_exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dualarm_exe.dir/flags.make

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o: CMakeFiles/dualarm_exe.dir/flags.make
CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o: ../src/simulate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o -c /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/src/simulate.cpp

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dualarm_exe.dir/src/simulate.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/src/simulate.cpp > CMakeFiles/dualarm_exe.dir/src/simulate.cpp.i

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dualarm_exe.dir/src/simulate.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/src/simulate.cpp -o CMakeFiles/dualarm_exe.dir/src/simulate.cpp.s

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.requires:

.PHONY : CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.requires

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.provides: CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.requires
	$(MAKE) -f CMakeFiles/dualarm_exe.dir/build.make CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.provides.build
.PHONY : CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.provides

CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.provides.build: CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o


# Object files for target dualarm_exe
dualarm_exe_OBJECTS = \
"CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o"

# External object files for target dualarm_exe
dualarm_exe_EXTERNAL_OBJECTS =

../bin/dualarm_exe: CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o
../bin/dualarm_exe: CMakeFiles/dualarm_exe.dir/build.make
../bin/dualarm_exe: ../bin/lib/libdualarm_lib.a
../bin/dualarm_exe: ../../.mujoco/mujoco200_linux/bin/libglew.so
../bin/dualarm_exe: ../../.mujoco/mujoco200_linux/bin/libglfw.so.3
../bin/dualarm_exe: ../../.mujoco/mujoco200_linux/bin/libmujoco200.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libEGL.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libGL.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libGLU.so
../bin/dualarm_exe: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/dualarm_exe: CMakeFiles/dualarm_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/dualarm_exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dualarm_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dualarm_exe.dir/build: ../bin/dualarm_exe

.PHONY : CMakeFiles/dualarm_exe.dir/build

CMakeFiles/dualarm_exe.dir/requires: CMakeFiles/dualarm_exe.dir/src/simulate.cpp.o.requires

.PHONY : CMakeFiles/dualarm_exe.dir/requires

CMakeFiles/dualarm_exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dualarm_exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dualarm_exe.dir/clean

CMakeFiles/dualarm_exe.dir/depend:
	cd /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build /home/kistarcl/KIST-Dual-Arm-Operational-Space-Control/build/CMakeFiles/dualarm_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dualarm_exe.dir/depend

