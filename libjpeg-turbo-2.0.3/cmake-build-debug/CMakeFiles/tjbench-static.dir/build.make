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
CMAKE_SOURCE_DIR = D:\Documents\libjpeg-turbo-2.0.3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tjbench-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tjbench-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tjbench-static.dir/flags.make

CMakeFiles/tjbench-static.dir/tjbench.c.obj: CMakeFiles/tjbench-static.dir/flags.make
CMakeFiles/tjbench-static.dir/tjbench.c.obj: CMakeFiles/tjbench-static.dir/includes_C.rsp
CMakeFiles/tjbench-static.dir/tjbench.c.obj: ../tjbench.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tjbench-static.dir/tjbench.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tjbench-static.dir\tjbench.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\tjbench.c

CMakeFiles/tjbench-static.dir/tjbench.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjbench-static.dir/tjbench.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\tjbench.c > CMakeFiles\tjbench-static.dir\tjbench.c.i

CMakeFiles/tjbench-static.dir/tjbench.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjbench-static.dir/tjbench.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\tjbench.c -o CMakeFiles\tjbench-static.dir\tjbench.c.s

CMakeFiles/tjbench-static.dir/tjutil.c.obj: CMakeFiles/tjbench-static.dir/flags.make
CMakeFiles/tjbench-static.dir/tjutil.c.obj: CMakeFiles/tjbench-static.dir/includes_C.rsp
CMakeFiles/tjbench-static.dir/tjutil.c.obj: ../tjutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tjbench-static.dir/tjutil.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\tjbench-static.dir\tjutil.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\tjutil.c

CMakeFiles/tjbench-static.dir/tjutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tjbench-static.dir/tjutil.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\tjutil.c > CMakeFiles\tjbench-static.dir\tjutil.c.i

CMakeFiles/tjbench-static.dir/tjutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tjbench-static.dir/tjutil.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\tjutil.c -o CMakeFiles\tjbench-static.dir\tjutil.c.s

# Object files for target tjbench-static
tjbench__static_OBJECTS = \
"CMakeFiles/tjbench-static.dir/tjbench.c.obj" \
"CMakeFiles/tjbench-static.dir/tjutil.c.obj"

# External object files for target tjbench-static
tjbench__static_EXTERNAL_OBJECTS =

tjbench-static.exe: CMakeFiles/tjbench-static.dir/tjbench.c.obj
tjbench-static.exe: CMakeFiles/tjbench-static.dir/tjutil.c.obj
tjbench-static.exe: CMakeFiles/tjbench-static.dir/build.make
tjbench-static.exe: libturbojpeg.a
tjbench-static.exe: CMakeFiles/tjbench-static.dir/linklibs.rsp
tjbench-static.exe: CMakeFiles/tjbench-static.dir/objects1.rsp
tjbench-static.exe: CMakeFiles/tjbench-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable tjbench-static.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tjbench-static.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tjbench-static.dir/build: tjbench-static.exe

.PHONY : CMakeFiles/tjbench-static.dir/build

CMakeFiles/tjbench-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\tjbench-static.dir\cmake_clean.cmake
.PHONY : CMakeFiles/tjbench-static.dir/clean

CMakeFiles/tjbench-static.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles\tjbench-static.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tjbench-static.dir/depend
