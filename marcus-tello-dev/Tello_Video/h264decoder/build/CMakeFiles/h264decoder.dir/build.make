# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build

# Include any dependencies generated for this target.
include CMakeFiles/h264decoder.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/h264decoder.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/h264decoder.dir/flags.make

CMakeFiles/h264decoder.dir/h264decoder.cpp.o: CMakeFiles/h264decoder.dir/flags.make
CMakeFiles/h264decoder.dir/h264decoder.cpp.o: ../h264decoder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/h264decoder.dir/h264decoder.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/h264decoder.dir/h264decoder.cpp.o -c /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder.cpp

CMakeFiles/h264decoder.dir/h264decoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/h264decoder.dir/h264decoder.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder.cpp > CMakeFiles/h264decoder.dir/h264decoder.cpp.i

CMakeFiles/h264decoder.dir/h264decoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/h264decoder.dir/h264decoder.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder.cpp -o CMakeFiles/h264decoder.dir/h264decoder.cpp.s

CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o: CMakeFiles/h264decoder.dir/flags.make
CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o: ../h264decoder_python.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o -c /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder_python.cpp

CMakeFiles/h264decoder.dir/h264decoder_python.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/h264decoder.dir/h264decoder_python.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder_python.cpp > CMakeFiles/h264decoder.dir/h264decoder_python.cpp.i

CMakeFiles/h264decoder.dir/h264decoder_python.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/h264decoder.dir/h264decoder_python.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/h264decoder_python.cpp -o CMakeFiles/h264decoder.dir/h264decoder_python.cpp.s

# Object files for target h264decoder
h264decoder_OBJECTS = \
"CMakeFiles/h264decoder.dir/h264decoder.cpp.o" \
"CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o"

# External object files for target h264decoder
h264decoder_EXTERNAL_OBJECTS =

libh264decoder.so: CMakeFiles/h264decoder.dir/h264decoder.cpp.o
libh264decoder.so: CMakeFiles/h264decoder.dir/h264decoder_python.cpp.o
libh264decoder.so: CMakeFiles/h264decoder.dir/build.make
libh264decoder.so: /usr/local/lib/libboost_python27-mt.dylib
libh264decoder.so: /usr/lib/libpython2.7.dylib
libh264decoder.so: CMakeFiles/h264decoder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libh264decoder.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/h264decoder.dir/link.txt --verbose=$(VERBOSE)
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E create_symlink /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build/libh264decoder.so /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/libh264decoder.so

# Rule to build all files generated by this target.
CMakeFiles/h264decoder.dir/build: libh264decoder.so

.PHONY : CMakeFiles/h264decoder.dir/build

CMakeFiles/h264decoder.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/h264decoder.dir/cmake_clean.cmake
.PHONY : CMakeFiles/h264decoder.dir/clean

CMakeFiles/h264decoder.dir/depend:
	cd /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build /Users/marcusmelo/Desktop/projects/tello-edu/Tello-Python/Tello_Video/h264decoder/build/CMakeFiles/h264decoder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/h264decoder.dir/depend

