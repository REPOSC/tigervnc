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
include test/CMakeFiles/output.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/output.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/output.dir/flags.make

test/CMakeFiles/output.dir/output.cxx.obj: test/CMakeFiles/output.dir/flags.make
test/CMakeFiles/output.dir/output.cxx.obj: test/CMakeFiles/output.dir/includes_CXX.rsp
test/CMakeFiles/output.dir/output.cxx.obj: ../test/output.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/output.dir/output.cxx.obj"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\output.dir\output.cxx.obj -c D:\Documents\fltk-1.3.5\test\output.cxx

test/CMakeFiles/output.dir/output.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/output.dir/output.cxx.i"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Documents\fltk-1.3.5\test\output.cxx > CMakeFiles\output.dir\output.cxx.i

test/CMakeFiles/output.dir/output.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/output.dir/output.cxx.s"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && D:\TDM-GCC-64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Documents\fltk-1.3.5\test\output.cxx -o CMakeFiles\output.dir\output.cxx.s

# Object files for target output
output_OBJECTS = \
"CMakeFiles/output.dir/output.cxx.obj"

# External object files for target output
output_EXTERNAL_OBJECTS =

bin/examples/output.exe: test/CMakeFiles/output.dir/output.cxx.obj
bin/examples/output.exe: test/CMakeFiles/output.dir/build.make
bin/examples/output.exe: lib/libfltk.a
bin/examples/output.exe: lib/libfltk_forms.a
bin/examples/output.exe: lib/libfltk.a
bin/examples/output.exe: test/CMakeFiles/output.dir/linklibs.rsp
bin/examples/output.exe: test/CMakeFiles/output.dir/objects1.rsp
bin/examples/output.exe: test/CMakeFiles/output.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\fltk-1.3.5\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\examples\output.exe"
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\output.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/output.dir/build: bin/examples/output.exe

.PHONY : test/CMakeFiles/output.dir/build

test/CMakeFiles/output.dir/clean:
	cd /d D:\Documents\fltk-1.3.5\cmake-build-debug\test && $(CMAKE_COMMAND) -P CMakeFiles\output.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/output.dir/clean

test/CMakeFiles/output.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\fltk-1.3.5 D:\Documents\fltk-1.3.5\test D:\Documents\fltk-1.3.5\cmake-build-debug D:\Documents\fltk-1.3.5\cmake-build-debug\test D:\Documents\fltk-1.3.5\cmake-build-debug\test\CMakeFiles\output.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/output.dir/depend
