# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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
CMAKE_COMMAND = "/Applications/CMake 2.8-3.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-3.app/Contents/bin/cmake" -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-3.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test

# Include any dependencies generated for this target.
include Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/depend.make

# Include the progress variables for this target.
include Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/progress.make

# Include the compile flags for this target's objects.
include Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/flags.make

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/flags.make
Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o: ../../../../Samples/NiSimpleRead/NiSimpleRead.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o -c /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleRead/NiSimpleRead.cpp

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.i"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleRead/NiSimpleRead.cpp > CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.i

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.s"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleRead/NiSimpleRead.cpp -o CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.s

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.requires:
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.requires

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.provides: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.requires
	$(MAKE) -f Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/build.make Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.provides.build
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.provides

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.provides.build: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.provides.build

# Object files for target Sample-NiSimpleRead
Sample__NiSimpleRead_OBJECTS = \
"CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o"

# External object files for target Sample-NiSimpleRead
Sample__NiSimpleRead_EXTERNAL_OBJECTS =

Samples/NiSimpleRead/Sample-NiSimpleRead: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o
Samples/NiSimpleRead/Sample-NiSimpleRead: Source/OpenNI/libOpenNI.dylib
Samples/NiSimpleRead/Sample-NiSimpleRead: ../../../../Source/External/LibUSB/Mac/libusb-1.0.a
Samples/NiSimpleRead/Sample-NiSimpleRead: /usr/lib/libdl.dylib
Samples/NiSimpleRead/Sample-NiSimpleRead: Source/External/TinyXml/libTinyXml.dylib
Samples/NiSimpleRead/Sample-NiSimpleRead: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/build.make
Samples/NiSimpleRead/Sample-NiSimpleRead: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Sample-NiSimpleRead"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Sample-NiSimpleRead.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/build: Samples/NiSimpleRead/Sample-NiSimpleRead
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/build

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/requires: Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/NiSimpleRead.cpp.o.requires
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/requires

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/clean:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead && $(CMAKE_COMMAND) -P CMakeFiles/Sample-NiSimpleRead.dir/cmake_clean.cmake
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/clean

Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/depend:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleRead /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Samples/NiSimpleRead/CMakeFiles/Sample-NiSimpleRead.dir/depend
