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
CMAKE_SOURCE_DIR = /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/pointerVector3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pointerVector3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pointerVector3.dir/flags.make

CMakeFiles/pointerVector3.dir/pointerVector.cpp.o: CMakeFiles/pointerVector3.dir/flags.make
CMakeFiles/pointerVector3.dir/pointerVector.cpp.o: ../pointerVector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pointerVector3.dir/pointerVector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pointerVector3.dir/pointerVector.cpp.o -c /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/pointerVector.cpp

CMakeFiles/pointerVector3.dir/pointerVector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pointerVector3.dir/pointerVector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/pointerVector.cpp > CMakeFiles/pointerVector3.dir/pointerVector.cpp.i

CMakeFiles/pointerVector3.dir/pointerVector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pointerVector3.dir/pointerVector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/pointerVector.cpp -o CMakeFiles/pointerVector3.dir/pointerVector.cpp.s

CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.requires:

.PHONY : CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.requires

CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.provides: CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.requires
	$(MAKE) -f CMakeFiles/pointerVector3.dir/build.make CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.provides.build
.PHONY : CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.provides

CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.provides.build: CMakeFiles/pointerVector3.dir/pointerVector.cpp.o


# Object files for target pointerVector3
pointerVector3_OBJECTS = \
"CMakeFiles/pointerVector3.dir/pointerVector.cpp.o"

# External object files for target pointerVector3
pointerVector3_EXTERNAL_OBJECTS =

pointerVector3: CMakeFiles/pointerVector3.dir/pointerVector.cpp.o
pointerVector3: CMakeFiles/pointerVector3.dir/build.make
pointerVector3: CMakeFiles/pointerVector3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pointerVector3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pointerVector3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pointerVector3.dir/build: pointerVector3

.PHONY : CMakeFiles/pointerVector3.dir/build

CMakeFiles/pointerVector3.dir/requires: CMakeFiles/pointerVector3.dir/pointerVector.cpp.o.requires

.PHONY : CMakeFiles/pointerVector3.dir/requires

CMakeFiles/pointerVector3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pointerVector3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pointerVector3.dir/clean

CMakeFiles/pointerVector3.dir/depend:
	cd /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles/pointerVector3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pointerVector3.dir/depend
