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
CMAKE_BINARY_DIR = /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks

# Include any dependencies generated for this target.
include Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/depend.make

# Include the progress variables for this target.
include Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/progress.make

# Include the compile flags for this target's objects.
include Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/flags.make

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/flags.make
Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o: ../../../../Samples/NiSimpleViewer/NiSimpleViewer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o -c /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleViewer/NiSimpleViewer.cpp

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.i"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleViewer/NiSimpleViewer.cpp > CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.i

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.s"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleViewer/NiSimpleViewer.cpp -o CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.s

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.requires:
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.requires

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.provides: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.requires
	$(MAKE) -f Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/build.make Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.provides.build
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.provides

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.provides.build: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.provides.build

# Object files for target Sample-NiSimpleViewer
Sample__NiSimpleViewer_OBJECTS = \
"CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o"

# External object files for target Sample-NiSimpleViewer
Sample__NiSimpleViewer_EXTERNAL_OBJECTS =

Samples/NiSimpleViewer/Sample-NiSimpleViewer: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o
Samples/NiSimpleViewer/Sample-NiSimpleViewer: Source/OpenNI/libOpenNI.dylib
Samples/NiSimpleViewer/Sample-NiSimpleViewer: ../../../../Source/External/LibUSB/Mac/libusb-1.0.a
Samples/NiSimpleViewer/Sample-NiSimpleViewer: /usr/lib/libdl.dylib
Samples/NiSimpleViewer/Sample-NiSimpleViewer: Source/External/TinyXml/libTinyXml.dylib
Samples/NiSimpleViewer/Sample-NiSimpleViewer: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/build.make
Samples/NiSimpleViewer/Sample-NiSimpleViewer: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Sample-NiSimpleViewer"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Sample-NiSimpleViewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/build: Samples/NiSimpleViewer/Sample-NiSimpleViewer
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/build

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/requires: Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/NiSimpleViewer.cpp.o.requires
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/requires

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/clean:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer && $(CMAKE_COMMAND) -P CMakeFiles/Sample-NiSimpleViewer.dir/cmake_clean.cmake
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/clean

Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/depend:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Samples/NiSimpleViewer /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/openFrameworks/Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Samples/NiSimpleViewer/CMakeFiles/Sample-NiSimpleViewer.dir/depend

