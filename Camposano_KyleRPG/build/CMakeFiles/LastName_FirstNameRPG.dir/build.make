# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.30.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.30.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build

# Include any dependencies generated for this target.
include CMakeFiles/LastName_FirstNameRPG.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LastName_FirstNameRPG.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LastName_FirstNameRPG.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LastName_FirstNameRPG.dir/flags.make

CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o: CMakeFiles/LastName_FirstNameRPG.dir/flags.make
CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o: /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/main.cpp
CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o: CMakeFiles/LastName_FirstNameRPG.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o -MF CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o.d -o CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o -c /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/main.cpp

CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/main.cpp > CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.i

CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/main.cpp -o CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.s

# Object files for target LastName_FirstNameRPG
LastName_FirstNameRPG_OBJECTS = \
"CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o"

# External object files for target LastName_FirstNameRPG
LastName_FirstNameRPG_EXTERNAL_OBJECTS =

LastName_FirstNameRPG: CMakeFiles/LastName_FirstNameRPG.dir/main.cpp.o
LastName_FirstNameRPG: CMakeFiles/LastName_FirstNameRPG.dir/build.make
LastName_FirstNameRPG: CMakeFiles/LastName_FirstNameRPG.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LastName_FirstNameRPG"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LastName_FirstNameRPG.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LastName_FirstNameRPG.dir/build: LastName_FirstNameRPG
.PHONY : CMakeFiles/LastName_FirstNameRPG.dir/build

CMakeFiles/LastName_FirstNameRPG.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LastName_FirstNameRPG.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LastName_FirstNameRPG.dir/clean

CMakeFiles/LastName_FirstNameRPG.dir/depend:
	cd /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build /Users/Kyle/CLionProjects/RPGTree/LastName_FirstNameRPG/build/CMakeFiles/LastName_FirstNameRPG.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LastName_FirstNameRPG.dir/depend

