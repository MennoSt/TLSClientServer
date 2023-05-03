# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/menno/cppProjects/BoostClientServerTLS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/menno/cppProjects/BoostClientServerTLS

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/menno/cppProjects/BoostClientServerTLS/CMakeFiles /home/menno/cppProjects/BoostClientServerTLS//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/menno/cppProjects/BoostClientServerTLS/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Example

# Build rule for target.
Example: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Example
.PHONY : Example

# fast build rule for target.
Example/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/build
.PHONY : Example/fast

#=============================================================================
# Target rules for targets named Server

# Build rule for target.
Server: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Server
.PHONY : Server

# fast build rule for target.
Server/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/build
.PHONY : Server/fast

#=============================================================================
# Target rules for targets named Client

# Build rule for target.
Client: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Client
.PHONY : Client

# fast build rule for target.
Client/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/build
.PHONY : Client/fast

#=============================================================================
# Target rules for targets named gmock

# Build rule for target.
gmock: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock
.PHONY : gmock

# fast build rule for target.
gmock/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googlemock/CMakeFiles/gmock.dir/build.make googletest/googlemock/CMakeFiles/gmock.dir/build
.PHONY : gmock/fast

#=============================================================================
# Target rules for targets named gmock_main

# Build rule for target.
gmock_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gmock_main
.PHONY : gmock_main

# fast build rule for target.
gmock_main/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googlemock/CMakeFiles/gmock_main.dir/build.make googletest/googlemock/CMakeFiles/gmock_main.dir/build
.PHONY : gmock_main/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googletest/CMakeFiles/gtest.dir/build.make googletest/googletest/CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

#=============================================================================
# Target rules for targets named gtest_main

# Build rule for target.
gtest_main: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gtest_main
.PHONY : gtest_main

# fast build rule for target.
gtest_main/fast:
	$(MAKE) $(MAKESILENT) -f googletest/googletest/CMakeFiles/gtest_main.dir/build.make googletest/googletest/CMakeFiles/gtest_main.dir/build
.PHONY : gtest_main/fast

#=============================================================================
# Target rules for targets named ExampleTests

# Build rule for target.
ExampleTests: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ExampleTests
.PHONY : ExampleTests

# fast build rule for target.
ExampleTests/fast:
	$(MAKE) $(MAKESILENT) -f test/CMakeFiles/ExampleTests.dir/build.make test/CMakeFiles/ExampleTests.dir/build
.PHONY : ExampleTests/fast

src/client.o: src/client.cpp.o
.PHONY : src/client.o

# target to build an object file
src/client.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/client.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/src/client.cpp.o
.PHONY : src/client.cpp.o

src/client.i: src/client.cpp.i
.PHONY : src/client.i

# target to preprocess a source file
src/client.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/client.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/src/client.cpp.i
.PHONY : src/client.cpp.i

src/client.s: src/client.cpp.s
.PHONY : src/client.s

# target to generate assembly for a file
src/client.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/client.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Client.dir/build.make CMakeFiles/Client.dir/src/client.cpp.s
.PHONY : src/client.cpp.s

src/server.o: src/server.cpp.o
.PHONY : src/server.o

# target to build an object file
src/server.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/server.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server.cpp.o
.PHONY : src/server.cpp.o

src/server.i: src/server.cpp.i
.PHONY : src/server.i

# target to preprocess a source file
src/server.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/server.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server.cpp.i
.PHONY : src/server.cpp.i

src/server.s: src/server.cpp.s
.PHONY : src/server.s

# target to generate assembly for a file
src/server.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Example.dir/build.make CMakeFiles/Example.dir/src/server.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Server.dir/build.make CMakeFiles/Server.dir/src/server.cpp.s
.PHONY : src/server.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... Client"
	@echo "... Example"
	@echo "... ExampleTests"
	@echo "... Server"
	@echo "... gmock"
	@echo "... gmock_main"
	@echo "... gtest"
	@echo "... gtest_main"
	@echo "... src/client.o"
	@echo "... src/client.i"
	@echo "... src/client.s"
	@echo "... src/server.o"
	@echo "... src/server.i"
	@echo "... src/server.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

