# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\home\lip_sync\rhubarb-lip-sync

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\home\lip_sync\rhubarb-lip-sync

# Include any dependencies generated for this target.
include rhubarb/CMakeFiles/whereami.dir/depend.make

# Include the progress variables for this target.
include rhubarb/CMakeFiles/whereami.dir/progress.make

# Include the compile flags for this target's objects.
include rhubarb/CMakeFiles/whereami.dir/flags.make

rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.o: rhubarb/CMakeFiles/whereami.dir/flags.make
rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.o: rhubarb/lib/whereami/src/whereami.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\home\lip_sync\rhubarb-lip-sync\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.o"
	cd /d C:\home\lip_sync\rhubarb-lip-sync\rhubarb && C:\Users\sushant.o\AppData\Local\Android\Sdk\ndk-bundle\toolchains\llvm\prebuilt\windows-x86_64\bin\clang.exe --target=aarch64-none-linux-android22 --gcc-toolchain=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64 --sysroot=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\whereami.dir\lib\whereami\src\whereami.c.o   -c C:\home\lip_sync\rhubarb-lip-sync\rhubarb\lib\whereami\src\whereami.c

rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.i"
	cd /d C:\home\lip_sync\rhubarb-lip-sync\rhubarb && C:\Users\sushant.o\AppData\Local\Android\Sdk\ndk-bundle\toolchains\llvm\prebuilt\windows-x86_64\bin\clang.exe --target=aarch64-none-linux-android22 --gcc-toolchain=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64 --sysroot=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\home\lip_sync\rhubarb-lip-sync\rhubarb\lib\whereami\src\whereami.c > CMakeFiles\whereami.dir\lib\whereami\src\whereami.c.i

rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.s"
	cd /d C:\home\lip_sync\rhubarb-lip-sync\rhubarb && C:\Users\sushant.o\AppData\Local\Android\Sdk\ndk-bundle\toolchains\llvm\prebuilt\windows-x86_64\bin\clang.exe --target=aarch64-none-linux-android22 --gcc-toolchain=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64 --sysroot=C:/Users/sushant.o/AppData/Local/Android/Sdk/ndk-bundle/toolchains/llvm/prebuilt/windows-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\home\lip_sync\rhubarb-lip-sync\rhubarb\lib\whereami\src\whereami.c -o CMakeFiles\whereami.dir\lib\whereami\src\whereami.c.s

# Object files for target whereami
whereami_OBJECTS = \
"CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.o"

# External object files for target whereami
whereami_EXTERNAL_OBJECTS =

rhubarb/libwhereami.so: rhubarb/CMakeFiles/whereami.dir/lib/whereami/src/whereami.c.o
rhubarb/libwhereami.so: rhubarb/CMakeFiles/whereami.dir/build.make
rhubarb/libwhereami.so: rhubarb/lib/boost/libs/llvm/arm64-v8a/libboost_system.so
rhubarb/libwhereami.so: rhubarb/lib/boost/libs/llvm/arm64-v8a/libboost_filesystem.so
rhubarb/libwhereami.so: rhubarb/CMakeFiles/whereami.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\home\lip_sync\rhubarb-lip-sync\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libwhereami.so"
	cd /d C:\home\lip_sync\rhubarb-lip-sync\rhubarb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\whereami.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rhubarb/CMakeFiles/whereami.dir/build: rhubarb/libwhereami.so

.PHONY : rhubarb/CMakeFiles/whereami.dir/build

rhubarb/CMakeFiles/whereami.dir/clean:
	cd /d C:\home\lip_sync\rhubarb-lip-sync\rhubarb && $(CMAKE_COMMAND) -P CMakeFiles\whereami.dir\cmake_clean.cmake
.PHONY : rhubarb/CMakeFiles/whereami.dir/clean

rhubarb/CMakeFiles/whereami.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\home\lip_sync\rhubarb-lip-sync C:\home\lip_sync\rhubarb-lip-sync\rhubarb C:\home\lip_sync\rhubarb-lip-sync C:\home\lip_sync\rhubarb-lip-sync\rhubarb C:\home\lip_sync\rhubarb-lip-sync\rhubarb\CMakeFiles\whereami.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : rhubarb/CMakeFiles/whereami.dir/depend

