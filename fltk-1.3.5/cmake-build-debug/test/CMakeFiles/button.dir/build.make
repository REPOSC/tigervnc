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
include test/CMakeFiles/button.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/button.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/button.dir/flags.make

test/CMakeFiles/button.dir/button.cxx.obj: test/CMakeFiles/button.dir/flags.make
test/CMakeFiles/button.dir/button.cxx.obj: test/CMakeFiles/button.dir/includes_CXX.rsp
test/CMakeFiles/button.dir/button.cxx.obj: ../test/button.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/button.dir/button.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\button.dir\button.cxx.obj -c D:\Documents\fltk-1.3.5\test\button.cxx

test/CMakeFiles/button.dir/button.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/button.dir/button.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\test\button.cxx > CMakeFiles\button.dir\button.cxx.i

test/CMakeFiles/button.dir/button.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/button.dir/button.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\test\button.cxx -o CMakeFiles\button.dir\button.cxx.s

# Object files for target button
button_OBJECTS = \
"CMakeFiles/button.dir/button.cxx.obj"

# External object files for target button
button_EXTERNAL_OBJECTS =

bin/examples/button.exe: test/CMakeFiles/button.dir/button.cxx.obj
bin/examples/button.exe: test/CMakeFiles/button.dir/build.make
bin/examples/button.exe: lib/libfltk.a
bin/examples/button.exe: test/CMakeFiles/button.dir/linklibs.rsp
bin/examples/button.exe: test/CMakeFiles/button.dir/objects1.rsp
bin/examples/button.exe: test/CMakeFiles/button.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\examples\button.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\button.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/button.dir/build: bin/examples/button.exe

.PHONY : test/CMakeFiles/button.dir/build

test/CMakeFiles/button.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\button.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/button.dir/clean

test/CMakeFiles/button.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\button.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/button.dir/depend
