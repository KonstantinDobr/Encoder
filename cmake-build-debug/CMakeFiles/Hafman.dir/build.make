# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/x64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/damir/Encoder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/damir/Encoder/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Hafman.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Hafman.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Hafman.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Hafman.dir/flags.make

CMakeFiles/Hafman.dir/main.cpp.o: CMakeFiles/Hafman.dir/flags.make
CMakeFiles/Hafman.dir/main.cpp.o: /Users/damir/Encoder/main.cpp
CMakeFiles/Hafman.dir/main.cpp.o: CMakeFiles/Hafman.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/damir/Encoder/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Hafman.dir/main.cpp.o"
	/usr/local/bin/c++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Hafman.dir/main.cpp.o -MF CMakeFiles/Hafman.dir/main.cpp.o.d -o CMakeFiles/Hafman.dir/main.cpp.o -c /Users/damir/Encoder/main.cpp

CMakeFiles/Hafman.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Hafman.dir/main.cpp.i"
	/usr/local/bin/c++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/damir/Encoder/main.cpp > CMakeFiles/Hafman.dir/main.cpp.i

CMakeFiles/Hafman.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Hafman.dir/main.cpp.s"
	/usr/local/bin/c++-12 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/damir/Encoder/main.cpp -o CMakeFiles/Hafman.dir/main.cpp.s

# Object files for target Hafman
Hafman_OBJECTS = \
"CMakeFiles/Hafman.dir/main.cpp.o"

# External object files for target Hafman
Hafman_EXTERNAL_OBJECTS =

Hafman: CMakeFiles/Hafman.dir/main.cpp.o
Hafman: CMakeFiles/Hafman.dir/build.make
Hafman: CMakeFiles/Hafman.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/damir/Encoder/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Hafman"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Hafman.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Hafman.dir/build: Hafman
.PHONY : CMakeFiles/Hafman.dir/build

CMakeFiles/Hafman.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Hafman.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Hafman.dir/clean

CMakeFiles/Hafman.dir/depend:
	cd /Users/damir/Encoder/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/damir/Encoder /Users/damir/Encoder /Users/damir/Encoder/cmake-build-debug /Users/damir/Encoder/cmake-build-debug /Users/damir/Encoder/cmake-build-debug/CMakeFiles/Hafman.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Hafman.dir/depend

