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
include Source/Utils/niLicense/CMakeFiles/niLicense.dir/depend.make

# Include the progress variables for this target.
include Source/Utils/niLicense/CMakeFiles/niLicense.dir/progress.make

# Include the compile flags for this target's objects.
include Source/Utils/niLicense/CMakeFiles/niLicense.dir/flags.make

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o: Source/Utils/niLicense/CMakeFiles/niLicense.dir/flags.make
Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o: ../../../../Source/Utils/niLicense/niLicense.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/niLicense.dir/niLicense.cpp.o -c /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Source/Utils/niLicense/niLicense.cpp

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/niLicense.dir/niLicense.cpp.i"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Source/Utils/niLicense/niLicense.cpp > CMakeFiles/niLicense.dir/niLicense.cpp.i

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/niLicense.dir/niLicense.cpp.s"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Source/Utils/niLicense/niLicense.cpp -o CMakeFiles/niLicense.dir/niLicense.cpp.s

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.requires:
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.requires

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.provides: Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.requires
	$(MAKE) -f Source/Utils/niLicense/CMakeFiles/niLicense.dir/build.make Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.provides.build
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.provides

Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.provides.build: Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.provides.build

# Object files for target niLicense
niLicense_OBJECTS = \
"CMakeFiles/niLicense.dir/niLicense.cpp.o"

# External object files for target niLicense
niLicense_EXTERNAL_OBJECTS =

Source/Utils/niLicense/niLicense: Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o
Source/Utils/niLicense/niLicense: Source/OpenNI/libOpenNI.dylib
Source/Utils/niLicense/niLicense: ../../../../Source/External/LibUSB/Mac/libusb-1.0.a
Source/Utils/niLicense/niLicense: /usr/lib/libdl.dylib
Source/Utils/niLicense/niLicense: Source/External/TinyXml/libTinyXml.dylib
Source/Utils/niLicense/niLicense: Source/Utils/niLicense/CMakeFiles/niLicense.dir/build.make
Source/Utils/niLicense/niLicense: Source/Utils/niLicense/CMakeFiles/niLicense.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable niLicense"
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/niLicense.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Source/Utils/niLicense/CMakeFiles/niLicense.dir/build: Source/Utils/niLicense/niLicense
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/build

Source/Utils/niLicense/CMakeFiles/niLicense.dir/requires: Source/Utils/niLicense/CMakeFiles/niLicense.dir/niLicense.cpp.o.requires
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/requires

Source/Utils/niLicense/CMakeFiles/niLicense.dir/clean:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense && $(CMAKE_COMMAND) -P CMakeFiles/niLicense.dir/cmake_clean.cmake
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/clean

Source/Utils/niLicense/CMakeFiles/niLicense.dir/depend:
	cd /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Source/Utils/niLicense /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense /Users/diederickhuijbers/c++/__PLAYGROUND__/openni_clean/OpenNI/Platform/Mac/Bin/Test/Source/Utils/niLicense/CMakeFiles/niLicense.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Source/Utils/niLicense/CMakeFiles/niLicense.dir/depend

