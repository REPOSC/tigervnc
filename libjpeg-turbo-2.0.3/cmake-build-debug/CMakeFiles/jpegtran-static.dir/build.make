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
include CMakeFiles/jpegtran-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jpegtran-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jpegtran-static.dir/flags.make

CMakeFiles/jpegtran-static.dir/jpegtran.c.obj: CMakeFiles/jpegtran-static.dir/flags.make
CMakeFiles/jpegtran-static.dir/jpegtran.c.obj: CMakeFiles/jpegtran-static.dir/includes_C.rsp
CMakeFiles/jpegtran-static.dir/jpegtran.c.obj: ../jpegtran.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jpegtran-static.dir/jpegtran.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jpegtran-static.dir\jpegtran.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\jpegtran.c

CMakeFiles/jpegtran-static.dir/jpegtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/jpegtran.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\jpegtran.c > CMakeFiles\jpegtran-static.dir\jpegtran.c.i

CMakeFiles/jpegtran-static.dir/jpegtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/jpegtran.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\jpegtran.c -o CMakeFiles\jpegtran-static.dir\jpegtran.c.s

CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj: CMakeFiles/jpegtran-static.dir/flags.make
CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj: CMakeFiles/jpegtran-static.dir/includes_C.rsp
CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj: ../cdjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jpegtran-static.dir\cdjpeg.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c

CMakeFiles/jpegtran-static.dir/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/cdjpeg.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c > CMakeFiles\jpegtran-static.dir\cdjpeg.c.i

CMakeFiles/jpegtran-static.dir/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/cdjpeg.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c -o CMakeFiles\jpegtran-static.dir\cdjpeg.c.s

CMakeFiles/jpegtran-static.dir/rdswitch.c.obj: CMakeFiles/jpegtran-static.dir/flags.make
CMakeFiles/jpegtran-static.dir/rdswitch.c.obj: CMakeFiles/jpegtran-static.dir/includes_C.rsp
CMakeFiles/jpegtran-static.dir/rdswitch.c.obj: ../rdswitch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/jpegtran-static.dir/rdswitch.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jpegtran-static.dir\rdswitch.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c

CMakeFiles/jpegtran-static.dir/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/rdswitch.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c > CMakeFiles\jpegtran-static.dir\rdswitch.c.i

CMakeFiles/jpegtran-static.dir/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/rdswitch.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c -o CMakeFiles\jpegtran-static.dir\rdswitch.c.s

CMakeFiles/jpegtran-static.dir/transupp.c.obj: CMakeFiles/jpegtran-static.dir/flags.make
CMakeFiles/jpegtran-static.dir/transupp.c.obj: CMakeFiles/jpegtran-static.dir/includes_C.rsp
CMakeFiles/jpegtran-static.dir/transupp.c.obj: ../transupp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/jpegtran-static.dir/transupp.c.obj"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jpegtran-static.dir\transupp.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\transupp.c

CMakeFiles/jpegtran-static.dir/transupp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jpegtran-static.dir/transupp.c.i"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\transupp.c > CMakeFiles\jpegtran-static.dir\transupp.c.i

CMakeFiles/jpegtran-static.dir/transupp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jpegtran-static.dir/transupp.c.s"
	D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\transupp.c -o CMakeFiles\jpegtran-static.dir\transupp.c.s

# Object files for target jpegtran-static
jpegtran__static_OBJECTS = \
"CMakeFiles/jpegtran-static.dir/jpegtran.c.obj" \
"CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj" \
"CMakeFiles/jpegtran-static.dir/rdswitch.c.obj" \
"CMakeFiles/jpegtran-static.dir/transupp.c.obj"

# External object files for target jpegtran-static
jpegtran__static_EXTERNAL_OBJECTS =

jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/jpegtran.c.obj
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/cdjpeg.c.obj
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/rdswitch.c.obj
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/transupp.c.obj
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/build.make
jpegtran-static.exe: libjpeg.a
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/linklibs.rsp
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/objects1.rsp
jpegtran-static.exe: CMakeFiles/jpegtran-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable jpegtran-static.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\jpegtran-static.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jpegtran-static.dir/build: jpegtran-static.exe

.PHONY : CMakeFiles/jpegtran-static.dir/build

CMakeFiles/jpegtran-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\jpegtran-static.dir\cmake_clean.cmake
.PHONY : CMakeFiles/jpegtran-static.dir/clean

CMakeFiles/jpegtran-static.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles\jpegtran-static.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jpegtran-static.dir/depend
