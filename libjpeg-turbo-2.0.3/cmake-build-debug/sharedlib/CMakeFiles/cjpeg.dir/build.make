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
include sharedlib/CMakeFiles/cjpeg.dir/depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/cjpeg.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/cjpeg.dir/flags.make

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj: ../cjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\cjpeg.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\cjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cjpeg.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\cjpeg.c > CMakeFiles\cjpeg.dir\__\cjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cjpeg.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\cjpeg.c -o CMakeFiles\cjpeg.dir\__\cjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj: ../cdjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\cdjpeg.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/cdjpeg.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c > CMakeFiles\cjpeg.dir\__\cdjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/cdjpeg.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\cdjpeg.c -o CMakeFiles\cjpeg.dir\__\cdjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj: ../rdgif.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\rdgif.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdgif.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdgif.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdgif.c > CMakeFiles\cjpeg.dir\__\rdgif.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdgif.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdgif.c -o CMakeFiles\cjpeg.dir\__\rdgif.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj: ../rdppm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\rdppm.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdppm.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdppm.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdppm.c > CMakeFiles\cjpeg.dir\__\rdppm.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdppm.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdppm.c -o CMakeFiles\cjpeg.dir\__\rdppm.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj: ../rdswitch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\rdswitch.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdswitch.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c > CMakeFiles\cjpeg.dir\__\rdswitch.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdswitch.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdswitch.c -o CMakeFiles\cjpeg.dir\__\rdswitch.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj: ../rdbmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\rdbmp.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdbmp.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdbmp.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdbmp.c > CMakeFiles\cjpeg.dir\__\rdbmp.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdbmp.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdbmp.c -o CMakeFiles\cjpeg.dir\__\rdbmp.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj: sharedlib/CMakeFiles/cjpeg.dir/includes_C.rsp
sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj: ../rdtarga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\cjpeg.dir\__\rdtarga.c.obj   -c D:\Documents\libjpeg-turbo-2.0.3\rdtarga.c

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/rdtarga.c.i"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\Documents\libjpeg-turbo-2.0.3\rdtarga.c > CMakeFiles\cjpeg.dir\__\rdtarga.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/rdtarga.c.s"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && D:\TDM-GCC-64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\Documents\libjpeg-turbo-2.0.3\rdtarga.c -o CMakeFiles\cjpeg.dir\__\rdtarga.c.s

# Object files for target cjpeg
cjpeg_OBJECTS = \
"CMakeFiles/cjpeg.dir/__/cjpeg.c.obj" \
"CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj" \
"CMakeFiles/cjpeg.dir/__/rdgif.c.obj" \
"CMakeFiles/cjpeg.dir/__/rdppm.c.obj" \
"CMakeFiles/cjpeg.dir/__/rdswitch.c.obj" \
"CMakeFiles/cjpeg.dir/__/rdbmp.c.obj" \
"CMakeFiles/cjpeg.dir/__/rdtarga.c.obj"

# External object files for target cjpeg
cjpeg_EXTERNAL_OBJECTS =

cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/cjpeg.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/cdjpeg.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/rdgif.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/rdppm.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/rdswitch.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/rdbmp.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/__/rdtarga.c.obj
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/build.make
cjpeg.exe: libjpeg.dll.a
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/linklibs.rsp
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/objects1.rsp
cjpeg.exe: sharedlib/CMakeFiles/cjpeg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable ..\cjpeg.exe"
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cjpeg.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/cjpeg.dir/build: cjpeg.exe

.PHONY : sharedlib/CMakeFiles/cjpeg.dir/build

sharedlib/CMakeFiles/cjpeg.dir/clean:
	cd /d D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib && $(CMAKE_COMMAND) -P CMakeFiles\cjpeg.dir\cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/clean

sharedlib/CMakeFiles/cjpeg.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3\sharedlib D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\sharedlib\CMakeFiles\cjpeg.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/depend
