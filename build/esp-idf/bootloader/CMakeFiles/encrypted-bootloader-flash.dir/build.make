# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake

# The command to remove a file.
RM = /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tassio/Documents/Esp32-C-code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tassio/Documents/Esp32-C-code/build

# Utility rule file for encrypted-bootloader-flash.

# Include any custom commands dependencies for this target.
include esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/progress.make

esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash:
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader && /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake -E echo "Error: The target encrypted-bootloader-flash requires"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader && /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake -E echo "CONFIG_SECURE_FLASH_ENCRYPTION_MODE_DEVELOPMENT to be enabled."
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader && /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake -E env "FAIL_MESSAGE=Failed executing target (see errors on lines above)" /home/tassio/.espressif/tools/cmake/3.24.0/bin/cmake -P /home/tassio/esp/esp-idf/tools/cmake/scripts/fail.cmake

encrypted-bootloader-flash: esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash
encrypted-bootloader-flash: esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/build.make
.PHONY : encrypted-bootloader-flash

# Rule to build all files generated by this target.
esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/build: encrypted-bootloader-flash
.PHONY : esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/build

esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/clean:
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader && $(CMAKE_COMMAND) -P CMakeFiles/encrypted-bootloader-flash.dir/cmake_clean.cmake
.PHONY : esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/clean

esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/depend:
	cd /home/tassio/Documents/Esp32-C-code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tassio/Documents/Esp32-C-code /home/tassio/esp/esp-idf/components/bootloader /home/tassio/Documents/Esp32-C-code/build /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader /home/tassio/Documents/Esp32-C-code/build/esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/bootloader/CMakeFiles/encrypted-bootloader-flash.dir/depend

