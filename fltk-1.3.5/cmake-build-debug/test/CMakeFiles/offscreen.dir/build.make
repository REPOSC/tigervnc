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
include test/CMakeFiles/offscreen.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/offscreen.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/offscreen.dir/flags.make

test/CMakeFiles/offscreen.dir/offscreen.cxx.obj: test/CMakeFiles/offscreen.dir/flags.make
test/CMakeFiles/offscreen.dir/offscreen.cxx.obj: test/CMakeFiles/offscreen.dir/includes_CXX.rsp
test/CMakeFiles/offscreen.dir/offscreen.cxx.obj: ../test/offscreen.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/offscreen.dir/offscreen.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\offscreen.dir\offscreen.cxx.obj -c D:\Documents\fltk-1.3.5\test\offscreen.cxx

test/CMakeFiles/offscreen.dir/offscreen.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/offscreen.dir/offscreen.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\test\offscreen.cxx > CMakeFiles\offscreen.dir\offscreen.cxx.i

test/CMakeFiles/offscreen.dir/offscreen.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/offscreen.dir/offscreen.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\test\offscreen.cxx -o CMakeFiles\offscreen.dir\offscreen.cxx.s

# Object files for target offscreen
offscreen_OBJECTS = \
"CMakeFiles/offscreen.dir/offscreen.cxx.obj"

# External object files for target offscreen
offscreen_EXTERNAL_OBJECTS =

bin/examples/offscreen.exe: test/CMakeFiles/offscreen.dir/offscreen.cxx.obj
bin/examples/offscreen.exe: test/CMakeFiles/offscreen.dir/build.make
bin/examples/offscreen.exe: lib/libfltk.a
bin/examples/offscreen.exe: test/CMakeFiles/offscreen.dir/linklibs.rsp
bin/examples/offscreen.exe: test/CMakeFiles/offscreen.dir/objects1.rsp
bin/examples/offscreen.exe: test/CMakeFiles/offscreen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\examples\offscreen.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\offscreen.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/offscreen.dir/build: bin/examples/offscreen.exe

.PHONY : test/CMakeFiles/offscreen.dir/build

test/CMakeFiles/offscreen.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\offscreen.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/offscreen.dir/clean

test/CMakeFiles/offscreen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\offscreen.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/offscreen.dir/depend
