# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/cmake-3.9.2/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake-3.9.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/travis/build/cezarnik/print_ip

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/travis/build/cezarnik/print_ip

# Include any dependencies generated for this target.
include tst/CMakeFiles/print_ip_test.dir/depend.make

# Include the progress variables for this target.
include tst/CMakeFiles/print_ip_test.dir/progress.make

# Include the compile flags for this target's objects.
include tst/CMakeFiles/print_ip_test.dir/flags.make

tst/CMakeFiles/print_ip_test.dir/test.cpp.o: tst/CMakeFiles/print_ip_test.dir/flags.make
tst/CMakeFiles/print_ip_test.dir/test.cpp.o: tst/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/travis/build/cezarnik/print_ip/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tst/CMakeFiles/print_ip_test.dir/test.cpp.o"
	cd /home/travis/build/cezarnik/print_ip/tst && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/print_ip_test.dir/test.cpp.o -c /home/travis/build/cezarnik/print_ip/tst/test.cpp

tst/CMakeFiles/print_ip_test.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/print_ip_test.dir/test.cpp.i"
	cd /home/travis/build/cezarnik/print_ip/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/travis/build/cezarnik/print_ip/tst/test.cpp > CMakeFiles/print_ip_test.dir/test.cpp.i

tst/CMakeFiles/print_ip_test.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/print_ip_test.dir/test.cpp.s"
	cd /home/travis/build/cezarnik/print_ip/tst && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/travis/build/cezarnik/print_ip/tst/test.cpp -o CMakeFiles/print_ip_test.dir/test.cpp.s

tst/CMakeFiles/print_ip_test.dir/test.cpp.o.requires:

.PHONY : tst/CMakeFiles/print_ip_test.dir/test.cpp.o.requires

tst/CMakeFiles/print_ip_test.dir/test.cpp.o.provides: tst/CMakeFiles/print_ip_test.dir/test.cpp.o.requires
	$(MAKE) -f tst/CMakeFiles/print_ip_test.dir/build.make tst/CMakeFiles/print_ip_test.dir/test.cpp.o.provides.build
.PHONY : tst/CMakeFiles/print_ip_test.dir/test.cpp.o.provides

tst/CMakeFiles/print_ip_test.dir/test.cpp.o.provides.build: tst/CMakeFiles/print_ip_test.dir/test.cpp.o


# Object files for target print_ip_test
print_ip_test_OBJECTS = \
"CMakeFiles/print_ip_test.dir/test.cpp.o"

# External object files for target print_ip_test
print_ip_test_EXTERNAL_OBJECTS =

tst/print_ip_test: tst/CMakeFiles/print_ip_test.dir/test.cpp.o
tst/print_ip_test: tst/CMakeFiles/print_ip_test.dir/build.make
tst/print_ip_test: /usr/lib/x86_64-linux-gnu/libboost_unit_test_framework.so
tst/print_ip_test: tst/CMakeFiles/print_ip_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/travis/build/cezarnik/print_ip/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable print_ip_test"
	cd /home/travis/build/cezarnik/print_ip/tst && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/print_ip_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tst/CMakeFiles/print_ip_test.dir/build: tst/print_ip_test

.PHONY : tst/CMakeFiles/print_ip_test.dir/build

tst/CMakeFiles/print_ip_test.dir/requires: tst/CMakeFiles/print_ip_test.dir/test.cpp.o.requires

.PHONY : tst/CMakeFiles/print_ip_test.dir/requires

tst/CMakeFiles/print_ip_test.dir/clean:
	cd /home/travis/build/cezarnik/print_ip/tst && $(CMAKE_COMMAND) -P CMakeFiles/print_ip_test.dir/cmake_clean.cmake
.PHONY : tst/CMakeFiles/print_ip_test.dir/clean

tst/CMakeFiles/print_ip_test.dir/depend:
	cd /home/travis/build/cezarnik/print_ip && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/travis/build/cezarnik/print_ip /home/travis/build/cezarnik/print_ip/tst /home/travis/build/cezarnik/print_ip /home/travis/build/cezarnik/print_ip/tst /home/travis/build/cezarnik/print_ip/tst/CMakeFiles/print_ip_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tst/CMakeFiles/print_ip_test.dir/depend
