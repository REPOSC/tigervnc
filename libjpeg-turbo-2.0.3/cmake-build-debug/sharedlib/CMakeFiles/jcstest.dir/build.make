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
include sharedlib/CMakeFiles/jcstest.dir/depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/jcstest.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/jcstest.dir/flags.make

sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.obj: sharedlib/CMakeFiles/jcstest.dir/flags.make
sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.obj: sharedlib/CMakeFiles/jcstest.dir/includes_C.rsp
sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.obj: ../jcstest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jcstest.dir\__\jcstest.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\jcstest.c

sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jcstest.dir/__/jcstest.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\jcstest.c > CMakeFiles\jcstest.dir\__\jcstest.c.i

sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jcstest.dir/__/jcstest.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\jcstest.c -o CMakeFiles\jcstest.dir\__\jcstest.c.s

# Object files for target jcstest
jcstest_OBJECTS = \
"CMakeFiles/jcstest.dir/__/jcstest.c.obj"

# External object files for target jcstest
jcstest_EXTERNAL_OBJECTS =

jcstest.exe: sharedlib/CMakeFiles/jcstest.dir/__/jcstest.c.obj
jcstest.exe: sharedlib/CMakeFiles/jcstest.dir/build.make
jcstest.exe: libjpeg.dll.a
jcstest.exe: sharedlib/CMakeFiles/jcstest.dir/linklibs.rsp
jcstest.exe: sharedlib/CMakeFiles/jcstest.dir/objects1.rsp
jcstest.exe: sharedlib/CMakeFiles/jcstest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ..\jcstest.exe"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\jcstest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/jcstest.dir/build: jcstest.exe

.PHONY : sharedlib/CMakeFiles/jcstest.dir/build

sharedlib/CMakeFiles/jcstest.dir/clean:
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && $(CMAKE_COMMAND) -P CMakeFiles\jcstest.dir\cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/jcstest.dir/clean

sharedlib/CMakeFiles/jcstest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3\sharedlib D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib\CMakeFiles\jcstest.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : sharedlib/CMakeFiles/jcstest.dir/depend
