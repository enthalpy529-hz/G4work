# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /home/medphys/program/cmake-3.25.2/bin/cmake

# The command to remove a file.
RM = /home/medphys/program/cmake-3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build

# Include any dependencies generated for this target.
include CMakeFiles/dnadamage1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dnadamage1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dnadamage1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dnadamage1.dir/flags.make

CMakeFiles/dnadamage1.dir/dnadamage1.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/dnadamage1.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/dnadamage1.cc
CMakeFiles/dnadamage1.dir/dnadamage1.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dnadamage1.dir/dnadamage1.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/dnadamage1.cc.o -MF CMakeFiles/dnadamage1.dir/dnadamage1.cc.o.d -o CMakeFiles/dnadamage1.dir/dnadamage1.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/dnadamage1.cc

CMakeFiles/dnadamage1.dir/dnadamage1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/dnadamage1.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/dnadamage1.cc > CMakeFiles/dnadamage1.dir/dnadamage1.cc.i

CMakeFiles/dnadamage1.dir/dnadamage1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/dnadamage1.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/dnadamage1.cc -o CMakeFiles/dnadamage1.dir/dnadamage1.cc.s

CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ActionInitialization.cc
CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o -MF CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ActionInitialization.cc

CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ActionInitialization.cc > CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.i

CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ActionInitialization.cc -o CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.s

CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DNAParser.cc
CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o -MF CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o.d -o CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DNAParser.cc

CMakeFiles/dnadamage1.dir/src/DNAParser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/DNAParser.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DNAParser.cc > CMakeFiles/dnadamage1.dir/src/DNAParser.cc.i

CMakeFiles/dnadamage1.dir/src/DNAParser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/DNAParser.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DNAParser.cc -o CMakeFiles/dnadamage1.dir/src/DNAParser.cc.s

CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DetectorConstruction.cc
CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DetectorConstruction.cc

CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DetectorConstruction.cc > CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.i

CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/DetectorConstruction.cc -o CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.s

CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ITTrackingInteractivity.cc
CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o -MF CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o.d -o CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ITTrackingInteractivity.cc

CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ITTrackingInteractivity.cc > CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.i

CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ITTrackingInteractivity.cc -o CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.s

CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ParallelWorld.cc
CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o -MF CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o.d -o CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ParallelWorld.cc

CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ParallelWorld.cc > CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.i

CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/ParallelWorld.cc -o CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.s

CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PhysicsList.cc
CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o -MF CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o.d -o CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PhysicsList.cc

CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PhysicsList.cc > CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.i

CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PhysicsList.cc -o CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.s

CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PrimaryGeneratorAction.cc
CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PrimaryGeneratorAction.cc

CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PrimaryGeneratorAction.cc > CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/PrimaryGeneratorAction.cc -o CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/dnadamage1.dir/src/RunAction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/RunAction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/RunAction.cc
CMakeFiles/dnadamage1.dir/src/RunAction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/dnadamage1.dir/src/RunAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/RunAction.cc.o -MF CMakeFiles/dnadamage1.dir/src/RunAction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/RunAction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/RunAction.cc

CMakeFiles/dnadamage1.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/RunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/RunAction.cc > CMakeFiles/dnadamage1.dir/src/RunAction.cc.i

CMakeFiles/dnadamage1.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/RunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/RunAction.cc -o CMakeFiles/dnadamage1.dir/src/RunAction.cc.s

CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/StackingAction.cc
CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o -MF CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/StackingAction.cc

CMakeFiles/dnadamage1.dir/src/StackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/StackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/StackingAction.cc > CMakeFiles/dnadamage1.dir/src/StackingAction.cc.i

CMakeFiles/dnadamage1.dir/src/StackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/StackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/StackingAction.cc -o CMakeFiles/dnadamage1.dir/src/StackingAction.cc.s

CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/SteppingAction.cc
CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o -MF CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/SteppingAction.cc

CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/SteppingAction.cc > CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.i

CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/SteppingAction.cc -o CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.s

CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o: CMakeFiles/dnadamage1.dir/flags.make
CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o: /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/TimeStepAction.cc
CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o: CMakeFiles/dnadamage1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o -MF CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o.d -o CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o -c /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/TimeStepAction.cc

CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/TimeStepAction.cc > CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.i

CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/src/TimeStepAction.cc -o CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.s

# Object files for target dnadamage1
dnadamage1_OBJECTS = \
"CMakeFiles/dnadamage1.dir/dnadamage1.cc.o" \
"CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o" \
"CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o" \
"CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o" \
"CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o" \
"CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/dnadamage1.dir/src/RunAction.cc.o" \
"CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o" \
"CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o" \
"CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o"

# External object files for target dnadamage1
dnadamage1_EXTERNAL_OBJECTS =

dnadamage1: CMakeFiles/dnadamage1.dir/dnadamage1.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/ActionInitialization.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/DNAParser.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/DetectorConstruction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/ITTrackingInteractivity.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/ParallelWorld.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/PhysicsList.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/PrimaryGeneratorAction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/RunAction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/StackingAction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/SteppingAction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/src/TimeStepAction.cc.o
dnadamage1: CMakeFiles/dnadamage1.dir/build.make
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4Tree.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4FR.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4GMocren.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4visHepRep.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4RayTracer.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4VRML.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4OpenGL.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4gl2ps.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4vis_management.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4modeling.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4interfaces.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4persistency.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4error_propagation.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4readout.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4physicslists.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4tasking.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4parmodels.so
dnadamage1: /usr/local/lib/libXmu.so
dnadamage1: /usr/local/lib/libXext.so
dnadamage1: /usr/local/lib/libXt.so
dnadamage1: /usr/local/lib/libICE.so
dnadamage1: /usr/local/lib/libSM.so
dnadamage1: /usr/local/lib/libX11.so
dnadamage1: /usr/lib/x86_64-linux-gnu/libGL.so
dnadamage1: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
dnadamage1: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
dnadamage1: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
dnadamage1: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
dnadamage1: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4run.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4event.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4tracking.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4processes.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4analysis.so
dnadamage1: /usr/lib/x86_64-linux-gnu/libexpat.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4digits_hits.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4track.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4particles.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4geometry.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4materials.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4zlib.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4graphics_reps.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4intercoms.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4global.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4clhep.so
dnadamage1: /home/medphys/geant4.10.07.p03-install/lib/libG4ptl.so.0.0.2
dnadamage1: CMakeFiles/dnadamage1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable dnadamage1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dnadamage1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dnadamage1.dir/build: dnadamage1
.PHONY : CMakeFiles/dnadamage1.dir/build

CMakeFiles/dnadamage1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dnadamage1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dnadamage1.dir/clean

CMakeFiles/dnadamage1.dir/depend:
	cd /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1 /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1 /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build /home/medphys/geant4.10.07.p03-install/share/Geant4-10.7.4/examples/extended/medical/dna/dnadamage1/build/CMakeFiles/dnadamage1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dnadamage1.dir/depend

