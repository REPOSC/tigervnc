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
include test/CMakeFiles/fractals.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/fractals.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/fractals.dir/flags.make

test/CMakeFiles/fractals.dir/fractals.cxx.obj: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fractals.cxx.obj: test/CMakeFiles/fractals.dir/includes_CXX.rsp
test/CMakeFiles/fractals.dir/fractals.cxx.obj: ../test/fractals.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/fractals.dir/fractals.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\fractals.dir\fractals.cxx.obj -c D:\Documents\fltk-1.3.5\test\fractals.cxx

test/CMakeFiles/fractals.dir/fractals.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fractals.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\test\fractals.cxx > CMakeFiles\fractals.dir\fractals.cxx.i

test/CMakeFiles/fractals.dir/fractals.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fractals.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\test\fractals.cxx -o CMakeFiles\fractals.dir\fractals.cxx.s

test/CMakeFiles/fractals.dir/fracviewer.cxx.obj: test/CMakeFiles/fractals.dir/flags.make
test/CMakeFiles/fractals.dir/fracviewer.cxx.obj: test/CMakeFiles/fractals.dir/includes_CXX.rsp
test/CMakeFiles/fractals.dir/fracviewer.cxx.obj: ../test/fracviewer.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/fractals.dir/fracviewer.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\fractals.dir\fracviewer.cxx.obj -c D:\Documents\fltk-1.3.5\test\fracviewer.cxx

test/CMakeFiles/fractals.dir/fracviewer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fractals.dir/fracviewer.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\test\fracviewer.cxx > CMakeFiles\fractals.dir\fracviewer.cxx.i

test/CMakeFiles/fractals.dir/fracviewer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fractals.dir/fracviewer.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\test\fracviewer.cxx -o CMakeFiles\fractals.dir\fracviewer.cxx.s

# Object files for target fractals
fractals_OBJECTS = \
"CMakeFiles/fractals.dir/fractals.cxx.obj" \
"CMakeFiles/fractals.dir/fracviewer.cxx.obj"

# External object files for target fractals
fractals_EXTERNAL_OBJECTS =

bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/fractals.cxx.obj
bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/fracviewer.cxx.obj
bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/build.make
bin/examples/fractals.exe: lib/libfltk.a
bin/examples/fractals.exe: lib/libfltk_gl.a
bin/examples/fractals.exe: lib/libfltk.a
bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/linklibs.rsp
bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/objects1.rsp
bin/examples/fractals.exe: test/CMakeFiles/fractals.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ..\bin\examples\fractals.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\fractals.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/fractals.dir/build: bin/examples/fractals.exe

.PHONY : test/CMakeFiles/fractals.dir/build

test/CMakeFiles/fractals.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\fractals.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/fractals.dir/clean

test/CMakeFiles/fractals.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\fractals.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/fractals.dir/depend
