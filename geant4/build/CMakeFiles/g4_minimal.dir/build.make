# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1_1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/liontea/Desktop/JHJ/geant4/build

# Include any dependencies generated for this target.
include CMakeFiles/g4_minimal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/g4_minimal.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/g4_minimal.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/g4_minimal.dir/flags.make

CMakeFiles/g4_minimal.dir/main.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/main.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/main.cc
CMakeFiles/g4_minimal.dir/main.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/g4_minimal.dir/main.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/main.cc.o -MF CMakeFiles/g4_minimal.dir/main.cc.o.d -o CMakeFiles/g4_minimal.dir/main.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/main.cc

CMakeFiles/g4_minimal.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/main.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/main.cc > CMakeFiles/g4_minimal.dir/main.cc.i

CMakeFiles/g4_minimal.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/main.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/main.cc -o CMakeFiles/g4_minimal.dir/main.cc.s

CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/ActionInitialization.cc
CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o -MF CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/ActionInitialization.cc

CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/ActionInitialization.cc > CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.i

CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/ActionInitialization.cc -o CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.s

CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/DetectorConstruction.cc
CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/DetectorConstruction.cc

CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/DetectorConstruction.cc > CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.i

CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/DetectorConstruction.cc -o CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.s

CMakeFiles/g4_minimal.dir/src/EventAction.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/src/EventAction.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/EventAction.cc
CMakeFiles/g4_minimal.dir/src/EventAction.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/g4_minimal.dir/src/EventAction.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/src/EventAction.cc.o -MF CMakeFiles/g4_minimal.dir/src/EventAction.cc.o.d -o CMakeFiles/g4_minimal.dir/src/EventAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/EventAction.cc

CMakeFiles/g4_minimal.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/src/EventAction.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/EventAction.cc > CMakeFiles/g4_minimal.dir/src/EventAction.cc.i

CMakeFiles/g4_minimal.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/src/EventAction.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/EventAction.cc -o CMakeFiles/g4_minimal.dir/src/EventAction.cc.s

CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/PrimaryGeneratorAction.cc
CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/PrimaryGeneratorAction.cc

CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/PrimaryGeneratorAction.cc > CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/PrimaryGeneratorAction.cc -o CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/g4_minimal.dir/src/RunAction.cc.o: CMakeFiles/g4_minimal.dir/flags.make
CMakeFiles/g4_minimal.dir/src/RunAction.cc.o: /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/RunAction.cc
CMakeFiles/g4_minimal.dir/src/RunAction.cc.o: CMakeFiles/g4_minimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/g4_minimal.dir/src/RunAction.cc.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/g4_minimal.dir/src/RunAction.cc.o -MF CMakeFiles/g4_minimal.dir/src/RunAction.cc.o.d -o CMakeFiles/g4_minimal.dir/src/RunAction.cc.o -c /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/RunAction.cc

CMakeFiles/g4_minimal.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g4_minimal.dir/src/RunAction.cc.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/RunAction.cc > CMakeFiles/g4_minimal.dir/src/RunAction.cc.i

CMakeFiles/g4_minimal.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g4_minimal.dir/src/RunAction.cc.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main/src/RunAction.cc -o CMakeFiles/g4_minimal.dir/src/RunAction.cc.s

# Object files for target g4_minimal
g4_minimal_OBJECTS = \
"CMakeFiles/g4_minimal.dir/main.cc.o" \
"CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/g4_minimal.dir/src/EventAction.cc.o" \
"CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/g4_minimal.dir/src/RunAction.cc.o"

# External object files for target g4_minimal
g4_minimal_EXTERNAL_OBJECTS =

g4_minimal: CMakeFiles/g4_minimal.dir/main.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/src/ActionInitialization.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/src/DetectorConstruction.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/src/EventAction.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/src/PrimaryGeneratorAction.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/src/RunAction.cc.o
g4_minimal: CMakeFiles/g4_minimal.dir/build.make
g4_minimal: /usr/local/lib/libG4Tree.dylib
g4_minimal: /usr/local/lib/libG4FR.dylib
g4_minimal: /usr/local/lib/libG4GMocren.dylib
g4_minimal: /usr/local/lib/libG4visHepRep.dylib
g4_minimal: /usr/local/lib/libG4RayTracer.dylib
g4_minimal: /usr/local/lib/libG4VRML.dylib
g4_minimal: /usr/local/lib/libG4OpenGL.dylib
g4_minimal: /usr/local/lib/libG4gl2ps.dylib
g4_minimal: /usr/local/lib/libG4visQt3D.dylib
g4_minimal: /usr/local/lib/libG4vis_management.dylib
g4_minimal: /usr/local/lib/libG4modeling.dylib
g4_minimal: /usr/local/lib/libG4interfaces.dylib
g4_minimal: /usr/local/lib/libG4persistency.dylib
g4_minimal: /usr/local/lib/libG4error_propagation.dylib
g4_minimal: /usr/local/lib/libG4readout.dylib
g4_minimal: /usr/local/lib/libG4physicslists.dylib
g4_minimal: /usr/local/lib/libG4tasking.dylib
g4_minimal: /usr/local/lib/libG4parmodels.dylib
g4_minimal: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtOpenGL.framework/QtOpenGL
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtPrintSupport.framework/QtPrintSupport
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtWidgets.framework/QtWidgets
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/Qt3DExtras.framework/Qt3DExtras
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/Qt3DInput.framework/Qt3DInput
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtGamepad.framework/QtGamepad
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/Qt3DLogic.framework/Qt3DLogic
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/Qt3DRender.framework/Qt3DRender
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/Qt3DCore.framework/Qt3DCore
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtGui.framework/QtGui
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtNetwork.framework/QtNetwork
g4_minimal: /opt/homebrew/Cellar/qt@5/5.15.3/lib/QtCore.framework/QtCore
g4_minimal: /opt/homebrew/lib/libxerces-c.dylib
g4_minimal: /usr/local/lib/libG4run.dylib
g4_minimal: /usr/local/lib/libG4event.dylib
g4_minimal: /usr/local/lib/libG4tracking.dylib
g4_minimal: /usr/local/lib/libG4processes.dylib
g4_minimal: /usr/local/lib/libG4analysis.dylib
g4_minimal: /usr/local/lib/libG4expat.dylib
g4_minimal: /usr/local/lib/libG4digits_hits.dylib
g4_minimal: /usr/local/lib/libG4track.dylib
g4_minimal: /usr/local/lib/libG4particles.dylib
g4_minimal: /usr/local/lib/libG4geometry.dylib
g4_minimal: /usr/local/lib/libG4materials.dylib
g4_minimal: /usr/local/lib/libG4zlib.dylib
g4_minimal: /usr/local/lib/libG4graphics_reps.dylib
g4_minimal: /usr/local/lib/libG4intercoms.dylib
g4_minimal: /usr/local/lib/libG4global.dylib
g4_minimal: /usr/local/lib/libG4clhep.dylib
g4_minimal: /usr/local/lib/libG4ptl.0.0.2.dylib
g4_minimal: CMakeFiles/g4_minimal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable g4_minimal"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/g4_minimal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/g4_minimal.dir/build: g4_minimal
.PHONY : CMakeFiles/g4_minimal.dir/build

CMakeFiles/g4_minimal.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/g4_minimal.dir/cmake_clean.cmake
.PHONY : CMakeFiles/g4_minimal.dir/clean

CMakeFiles/g4_minimal.dir/depend:
	cd /Users/liontea/Desktop/JHJ/geant4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main /Users/liontea/Desktop/JHJ/geant4/g4_minimal-main /Users/liontea/Desktop/JHJ/geant4/build /Users/liontea/Desktop/JHJ/geant4/build /Users/liontea/Desktop/JHJ/geant4/build/CMakeFiles/g4_minimal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/g4_minimal.dir/depend

