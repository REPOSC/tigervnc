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
include test/CMakeFiles/inactive.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/inactive.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/inactive.dir/flags.make

test/inactive.cxx: ../test/inactive.fl
test/inactive.cxx: ../test/inactive.fl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating inactive.cxx, inactive.h"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && ..\bin\fluid.exe -c D:/Documents/fltk-1.3.5/test/inactive.fl

test/inactive.h: test/inactive.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate test\inactive.h

test/CMakeFiles/inactive.dir/inactive.cxx.obj: test/CMakeFiles/inactive.dir/flags.make
test/CMakeFiles/inactive.dir/inactive.cxx.obj: test/CMakeFiles/inactive.dir/includes_CXX.rsp
test/CMakeFiles/inactive.dir/inactive.cxx.obj: test/inactive.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/inactive.dir/inactive.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\inactive.dir\inactive.cxx.obj -c D:\Documents\fltk-1.3.5\cmake-build-debug\test\inactive.cxx

test/CMakeFiles/inactive.dir/inactive.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inactive.dir/inactive.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\cmake-build-debug\test\inactive.cxx > CMakeFiles\inactive.dir\inactive.cxx.i

test/CMakeFiles/inactive.dir/inactive.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inactive.dir/inactive.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\cmake-build-debug\test\inactive.cxx -o CMakeFiles\inactive.dir\inactive.cxx.s

# Object files for target inactive
inactive_OBJECTS = \
"CMakeFiles/inactive.dir/inactive.cxx.obj"

# External object files for target inactive
inactive_EXTERNAL_OBJECTS =

bin/examples/inactive.exe: test/CMakeFiles/inactive.dir/inactive.cxx.obj
bin/examples/inactive.exe: test/CMakeFiles/inactive.dir/build.make
bin/examples/inactive.exe: lib/libfltk.a
bin/examples/inactive.exe: test/CMakeFiles/inactive.dir/linklibs.rsp
bin/examples/inactive.exe: test/CMakeFiles/inactive.dir/objects1.rsp
bin/examples/inactive.exe: test/CMakeFiles/inactive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ..\bin\examples\inactive.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\inactive.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/inactive.dir/build: bin/examples/inactive.exe

.PHONY : test/CMakeFiles/inactive.dir/build

test/CMakeFiles/inactive.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\inactive.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/inactive.dir/clean

test/CMakeFiles/inactive.dir/depend: test/inactive.cxx
test/CMakeFiles/inactive.dir/depend: test/inactive.h
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\inactive.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/inactive.dir/depend
