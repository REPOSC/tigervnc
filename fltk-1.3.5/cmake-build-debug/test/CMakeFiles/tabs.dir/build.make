# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Documents\fltk-1.3.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Documents\fltk-1.3.5\cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/tabs.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tabs.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tabs.dir/flags.make

test/tabs.cxx: ../test/tabs.fl
test/tabs.cxx: ../test/tabs.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating tabs.cxx, tabs.h"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && ..\bin\fluid.exe -c D:/Documents/fltk-1.3.5/test/tabs.fl

test/tabs.h: test/tabs.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test\tabs.h

test/CMakeFiles/tabs.dir/tabs.cxx.obj: test/CMakeFiles/tabs.dir/flags.make
test/CMakeFiles/tabs.dir/tabs.cxx.obj: test/CMakeFiles/tabs.dir/includes_CXX.rsp
test/CMakeFiles/tabs.dir/tabs.cxx.obj: test/tabs.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/tabs.dir/tabs.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\tabs.dir\tabs.cxx.obj -c D:\Documents\fltk-1.3.5\cmake-build-debug\test\tabs.cxx

test/CMakeFiles/tabs.dir/tabs.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tabs.dir/tabs.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\cmake-build-debug\test\tabs.cxx > CMakeFiles\tabs.dir\tabs.cxx.i

test/CMakeFiles/tabs.dir/tabs.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tabs.dir/tabs.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\cmake-build-debug\test\tabs.cxx -o CMakeFiles\tabs.dir\tabs.cxx.s

# Object files for target tabs
tabs_OBJECTS = \
"CMakeFiles/tabs.dir/tabs.cxx.obj"

# External object files for target tabs
tabs_EXTERNAL_OBJECTS =

bin/examples/tabs.exe: test/CMakeFiles/tabs.dir/tabs.cxx.obj
bin/examples/tabs.exe: test/CMakeFiles/tabs.dir/build.make
bin/examples/tabs.exe: lib/libfltk.a
bin/examples/tabs.exe: test/CMakeFiles/tabs.dir/linklibs.rsp
bin/examples/tabs.exe: test/CMakeFiles/tabs.dir/objects1.rsp
bin/examples/tabs.exe: test/CMakeFiles/tabs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ..\bin\examples\tabs.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tabs.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tabs.dir/build: bin/examples/tabs.exe

.PHONY : test/CMakeFiles/tabs.dir/build

test/CMakeFiles/tabs.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\tabs.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/tabs.dir/clean

test/CMakeFiles/tabs.dir/depend: test/tabs.cxx
test/CMakeFiles/tabs.dir/depend: test/tabs.h
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\tabs.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tabs.dir/depend

