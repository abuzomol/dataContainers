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
include CMakeFiles/vectorArray3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vectorArray3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vectorArray3.dir/flags.make

CMakeFiles/vectorArray3.dir/vectorArray.cpp.o: CMakeFiles/vectorArray3.dir/flags.make
CMakeFiles/vectorArray3.dir/vectorArray.cpp.o: ../vectorArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vectorArray3.dir/vectorArray.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vectorArray3.dir/vectorArray.cpp.o -c /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/vectorArray.cpp

CMakeFiles/vectorArray3.dir/vectorArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vectorArray3.dir/vectorArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/vectorArray.cpp > CMakeFiles/vectorArray3.dir/vectorArray.cpp.i

CMakeFiles/vectorArray3.dir/vectorArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vectorArray3.dir/vectorArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/vectorArray.cpp -o CMakeFiles/vectorArray3.dir/vectorArray.cpp.s

CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.requires:

.PHONY : CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.requires

CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.provides: CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.requires
	$(MAKE) -f CMakeFiles/vectorArray3.dir/build.make CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.provides.build
.PHONY : CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.provides

CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.provides.build: CMakeFiles/vectorArray3.dir/vectorArray.cpp.o


# Object files for target vectorArray3
vectorArray3_OBJECTS = \
"CMakeFiles/vectorArray3.dir/vectorArray.cpp.o"

# External object files for target vectorArray3
vectorArray3_EXTERNAL_OBJECTS =

vectorArray3: CMakeFiles/vectorArray3.dir/vectorArray.cpp.o
vectorArray3: CMakeFiles/vectorArray3.dir/build.make
vectorArray3: CMakeFiles/vectorArray3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vectorArray3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vectorArray3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vectorArray3.dir/build: vectorArray3

.PHONY : CMakeFiles/vectorArray3.dir/build

CMakeFiles/vectorArray3.dir/requires: CMakeFiles/vectorArray3.dir/vectorArray.cpp.o.requires

.PHONY : CMakeFiles/vectorArray3.dir/requires

CMakeFiles/vectorArray3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vectorArray3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vectorArray3.dir/clean

CMakeFiles/vectorArray3.dir/depend:
	cd /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release /home/muzamil/Dropbox/RESEARCH/pointLocation/caches-raw-data/Linux/dataContainers/cmake-build-release/CMakeFiles/vectorArray3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vectorArray3.dir/depend

