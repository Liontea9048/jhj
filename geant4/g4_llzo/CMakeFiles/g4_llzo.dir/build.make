# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liontea/Desktop/JHJ/geant4/g4_llzo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liontea/Desktop/JHJ/geant4/g4_llzo

# Include any dependencies generated for this target.
include CMakeFiles/g4_llzo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/g4_llzo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/g4_llzo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/g4_llzo.dir/flags.make

CMakeFiles/g4_llzo.dir/g4_llzo.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/g4_llzo.cc.o: g4_llzo.cc
CMakeFiles/g4_llzo.dir/g4_llzo.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/g4_llzo.dir/g4_llzo.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/g4_llzo.cc.o -MF CMakeFiles/g4_llzo.dir/g4_llzo.cc.o.d -o CMakeFiles/g4_llzo.dir/g4_llzo.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/g4_llzo.cc

CMakeFiles/g4_llzo.dir/g4_llzo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/g4_llzo.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/g4_llzo.cc > CMakeFiles/g4_llzo.dir/g4_llzo.cc.i

CMakeFiles/g4_llzo.dir/g4_llzo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/g4_llzo.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/g4_llzo.cc -o CMakeFiles/g4_llzo.dir/g4_llzo.cc.s

CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o: src/ActionInitialization.cc
CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o -MF CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/ActionInitialization.cc

CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/ActionInitialization.cc > CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.i

CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/ActionInitialization.cc -o CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.s

CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o: src/DetectorConstruction.cc
CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/DetectorConstruction.cc

CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/DetectorConstruction.cc > CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.i

CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/DetectorConstruction.cc -o CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.s

CMakeFiles/g4_llzo.dir/src/EventAction.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/EventAction.cc.o: src/EventAction.cc
CMakeFiles/g4_llzo.dir/src/EventAction.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/g4_llzo.dir/src/EventAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/EventAction.cc.o -MF CMakeFiles/g4_llzo.dir/src/EventAction.cc.o.d -o CMakeFiles/g4_llzo.dir/src/EventAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/EventAction.cc

CMakeFiles/g4_llzo.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/EventAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/EventAction.cc > CMakeFiles/g4_llzo.dir/src/EventAction.cc.i

CMakeFiles/g4_llzo.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/EventAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/EventAction.cc -o CMakeFiles/g4_llzo.dir/src/EventAction.cc.s

CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o: src/PhysicsList.cc
CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o -MF CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o.d -o CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PhysicsList.cc

CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PhysicsList.cc > CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.i

CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PhysicsList.cc -o CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.s

CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o: src/PrimaryGeneratorAction.cc
CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PrimaryGeneratorAction.cc

CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PrimaryGeneratorAction.cc > CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/PrimaryGeneratorAction.cc -o CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/g4_llzo.dir/src/Run.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/Run.cc.o: src/Run.cc
CMakeFiles/g4_llzo.dir/src/Run.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/g4_llzo.dir/src/Run.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/Run.cc.o -MF CMakeFiles/g4_llzo.dir/src/Run.cc.o.d -o CMakeFiles/g4_llzo.dir/src/Run.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/Run.cc

CMakeFiles/g4_llzo.dir/src/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/Run.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/Run.cc > CMakeFiles/g4_llzo.dir/src/Run.cc.i

CMakeFiles/g4_llzo.dir/src/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/Run.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/Run.cc -o CMakeFiles/g4_llzo.dir/src/Run.cc.s

CMakeFiles/g4_llzo.dir/src/RunAction.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/RunAction.cc.o: src/RunAction.cc
CMakeFiles/g4_llzo.dir/src/RunAction.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/g4_llzo.dir/src/RunAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/RunAction.cc.o -MF CMakeFiles/g4_llzo.dir/src/RunAction.cc.o.d -o CMakeFiles/g4_llzo.dir/src/RunAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/RunAction.cc

CMakeFiles/g4_llzo.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/RunAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/RunAction.cc > CMakeFiles/g4_llzo.dir/src/RunAction.cc.i

CMakeFiles/g4_llzo.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/RunAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/RunAction.cc -o CMakeFiles/g4_llzo.dir/src/RunAction.cc.s

CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o: CMakeFiles/g4_llzo.dir/flags.make
CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o: src/SteppingAction.cc
CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o: CMakeFiles/g4_llzo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o -MF CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o.d -o CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/SteppingAction.cc

CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/SteppingAction.cc > CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.i

CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_llzo/src/SteppingAction.cc -o CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.s

# Object files for target g4_llzo
g4_llzo_OBJECTS = \
"CMakeFiles/g4_llzo.dir/g4_llzo.cc.o" \
"CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/g4_llzo.dir/src/EventAction.cc.o" \
"CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o" \
"CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/g4_llzo.dir/src/Run.cc.o" \
"CMakeFiles/g4_llzo.dir/src/RunAction.cc.o" \
"CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o"

# External object files for target g4_llzo
g4_llzo_EXTERNAL_OBJECTS =

g4_llzo: CMakeFiles/g4_llzo.dir/g4_llzo.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/ActionInitialization.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/DetectorConstruction.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/EventAction.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/PhysicsList.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/PrimaryGeneratorAction.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/Run.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/RunAction.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/src/SteppingAction.cc.o
g4_llzo: CMakeFiles/g4_llzo.dir/build.make
g4_llzo: /usr/local/lib/libG4Tree.dylib
g4_llzo: /usr/local/lib/libG4FR.dylib
g4_llzo: /usr/local/lib/libG4GMocren.dylib
g4_llzo: /usr/local/lib/libG4visHepRep.dylib
g4_llzo: /usr/local/lib/libG4RayTracer.dylib
g4_llzo: /usr/local/lib/libG4VRML.dylib
g4_llzo: /usr/local/lib/libG4ToolsSG.dylib
g4_llzo: /usr/local/lib/libG4OpenGL.dylib
g4_llzo: /usr/local/lib/libG4visQt3D.dylib
g4_llzo: /usr/local/lib/libG4vis_management.dylib
g4_llzo: /usr/local/lib/libG4modeling.dylib
g4_llzo: /usr/local/lib/libG4interfaces.dylib
g4_llzo: /usr/local/lib/libG4persistency.dylib
g4_llzo: /usr/local/lib/libG4error_propagation.dylib
g4_llzo: /usr/local/lib/libG4readout.dylib
g4_llzo: /usr/local/lib/libG4physicslists.dylib
g4_llzo: /usr/local/lib/libG4run.dylib
g4_llzo: /usr/local/lib/libG4event.dylib
g4_llzo: /usr/local/lib/libG4tracking.dylib
g4_llzo: /usr/local/lib/libG4parmodels.dylib
g4_llzo: /usr/local/lib/libG4processes.dylib
g4_llzo: /usr/local/lib/libG4digits_hits.dylib
g4_llzo: /usr/local/lib/libG4track.dylib
g4_llzo: /usr/local/lib/libG4particles.dylib
g4_llzo: /usr/local/lib/libG4geometry.dylib
g4_llzo: /usr/local/lib/libG4materials.dylib
g4_llzo: /usr/local/lib/libG4graphics_reps.dylib
g4_llzo: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtOpenGL.framework/QtOpenGL
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtPrintSupport.framework/QtPrintSupport
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtWidgets.framework/QtWidgets
g4_llzo: /opt/homebrew/opt/qt@5/lib/Qt3DExtras.framework/Qt3DExtras
g4_llzo: /opt/homebrew/opt/qt@5/lib/Qt3DInput.framework/Qt3DInput
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtGamepad.framework/QtGamepad
g4_llzo: /opt/homebrew/opt/qt@5/lib/Qt3DLogic.framework/Qt3DLogic
g4_llzo: /opt/homebrew/opt/qt@5/lib/Qt3DRender.framework/Qt3DRender
g4_llzo: /opt/homebrew/opt/qt@5/lib/Qt3DCore.framework/Qt3DCore
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtGui.framework/QtGui
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtNetwork.framework/QtNetwork
g4_llzo: /opt/homebrew/opt/qt@5/lib/QtCore.framework/QtCore
g4_llzo: /opt/homebrew/lib/libxerces-c.dylib
g4_llzo: /usr/local/lib/libG4analysis.dylib
g4_llzo: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX13.3.sdk/usr/lib/libexpat.tbd
g4_llzo: /usr/local/lib/libG4zlib.dylib
g4_llzo: /usr/local/lib/libG4intercoms.dylib
g4_llzo: /usr/local/lib/libG4global.dylib
g4_llzo: /usr/local/lib/libG4clhep.dylib
g4_llzo: /usr/local/lib/libG4ptl.2.3.3.dylib
g4_llzo: CMakeFiles/g4_llzo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable g4_llzo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/g4_llzo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/g4_llzo.dir/build: g4_llzo
.PHONY : CMakeFiles/g4_llzo.dir/build

CMakeFiles/g4_llzo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/g4_llzo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/g4_llzo.dir/clean

CMakeFiles/g4_llzo.dir/depend:
	cd /Users/liontea/Desktop/JHJ/geant4/g4_llzo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liontea/Desktop/JHJ/geant4/g4_llzo /Users/liontea/Desktop/JHJ/geant4/g4_llzo /Users/liontea/Desktop/JHJ/geant4/g4_llzo /Users/liontea/Desktop/JHJ/geant4/g4_llzo /Users/liontea/Desktop/JHJ/geant4/g4_llzo/CMakeFiles/g4_llzo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/g4_llzo.dir/depend

