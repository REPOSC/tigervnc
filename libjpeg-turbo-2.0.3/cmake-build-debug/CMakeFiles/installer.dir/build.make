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

# Utility rule file for installer.

# Include the progress variables for this target.
include CMakeFiles/installer.dir/progress.make

CMakeFiles/installer: libjpeg-62.dll
CMakeFiles/installer: libjpeg.a
CMakeFiles/installer: libturbojpeg.dll
CMakeFiles/installer: libturbojpeg.a
CMakeFiles/installer: rdjpgcom.exe
CMakeFiles/installer: wrjpgcom.exe
CMakeFiles/installer: cjpeg.exe
CMakeFiles/installer: djpeg.exe
CMakeFiles/installer: jpegtran.exe
CMakeFiles/installer: tjbench.exe
	makensis -nocd -DGCC -DWIN64 -DBUILDDIR= installer.nsi

installer: CMakeFiles/installer
installer: CMakeFiles/installer.dir/build.make

.PHONY : installer

# Rule to build all files generated by this target.
CMakeFiles/installer.dir/build: installer

.PHONY : CMakeFiles/installer.dir/build

CMakeFiles/installer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\installer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/installer.dir/clean

CMakeFiles/installer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3 D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug D:\Documents\libjpeg-turbo-2.0.3\cmake-build-debug\CMakeFiles\installer.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/installer.dir/depend

