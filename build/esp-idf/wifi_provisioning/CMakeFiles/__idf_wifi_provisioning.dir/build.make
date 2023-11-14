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

# Include any dependencies generated for this target.
include esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_config.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_config.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_config.c > CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_config.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_scan.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_scan.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_scan.c > CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_scan.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_ctrl.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_ctrl.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_ctrl.c > CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/wifi_ctrl.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/manager.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/manager.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/manager.c > CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/manager.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/handlers.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/handlers.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/handlers.c > CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/handlers.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_console.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_console.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_console.c > CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_console.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_config.pb-c.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_config.pb-c.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_config.pb-c.c > CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_config.pb-c.c -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_scan.pb-c.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_scan.pb-c.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_scan.pb-c.c > CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_scan.pb-c.c -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_ctrl.pb-c.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_ctrl.pb-c.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_ctrl.pb-c.c > CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_ctrl.pb-c.c -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_constants.pb-c.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_constants.pb-c.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_constants.pb-c.c > CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/proto-c/wifi_constants.pb-c.c -o CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.s

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/flags.make
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj: /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_softap.c
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj -MF CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj.d -o CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj -c /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_softap.c

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.i"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_softap.c > CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.i

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.s"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tassio/esp/esp-idf/components/wifi_provisioning/src/scheme_softap.c -o CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.s

# Object files for target __idf_wifi_provisioning
__idf_wifi_provisioning_OBJECTS = \
"CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj" \
"CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj"

# External object files for target __idf_wifi_provisioning
__idf_wifi_provisioning_EXTERNAL_OBJECTS =

esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_config.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_scan.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/wifi_ctrl.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/manager.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/handlers.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_console.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_config.pb-c.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_scan.pb-c.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_ctrl.pb-c.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/proto-c/wifi_constants.pb-c.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/src/scheme_softap.c.obj
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/build.make
esp-idf/wifi_provisioning/libwifi_provisioning.a: esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tassio/Documents/Esp32-C-code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C static library libwifi_provisioning.a"
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && $(CMAKE_COMMAND) -P CMakeFiles/__idf_wifi_provisioning.dir/cmake_clean_target.cmake
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_wifi_provisioning.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/build: esp-idf/wifi_provisioning/libwifi_provisioning.a
.PHONY : esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/build

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/clean:
	cd /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning && $(CMAKE_COMMAND) -P CMakeFiles/__idf_wifi_provisioning.dir/cmake_clean.cmake
.PHONY : esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/clean

esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/depend:
	cd /home/tassio/Documents/Esp32-C-code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tassio/Documents/Esp32-C-code /home/tassio/esp/esp-idf/components/wifi_provisioning /home/tassio/Documents/Esp32-C-code/build /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning /home/tassio/Documents/Esp32-C-code/build/esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/wifi_provisioning/CMakeFiles/__idf_wifi_provisioning.dir/depend

