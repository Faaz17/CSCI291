##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Lab3
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=C:/Development/Codelite/Lab3/Lab3
ProjectPath            :=C:/Development/Codelite/Lab3/Lab3/Lab3
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/Lab3
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=FAAZ
Date                   :=12/11/2025
CodeLitePath           :="C:/Program Files/CodeLite"
MakeDirCommand         :=mkdir
LinkerName             :=C:/msys64/ucrt64/bin/g++.exe
SharedObjectLinkerName :=C:/msys64/ucrt64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=C:/Development/Codelite/Lab3/Lab3/build-$(WorkspaceConfiguration)/bin
OutputFile             :=..\build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/msys64/ucrt64/bin/windres.exe
LinkOptions            :=  -static
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/msys64/ucrt64/bin/ar.exe -r
CXX      := C:/msys64/ucrt64/bin/g++.exe
CC       := C:/msys64/ucrt64/bin/gcc.exe
CXXFLAGS :=  -gdwarf-2 -O0 -Wall -save-temps -fverbose-asm $(Preprocessors)
CFLAGS   :=  -gdwarf-2 -O0 -Wall -save-temps -fverbose-asm $(Preprocessors)
ASFLAGS  := 
AS       := C:/msys64/ucrt64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
SHELL := cmd.exe
Objects0=$(IntermediateDirectory)/question2.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"
	@if not exist "$(OutputDirectory)" $(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@if not exist "$(IntermediateDirectory)" $(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/question2.c$(ObjectSuffix): question2.c 
	$(CC) $(SourceSwitch) "C:/Development/Codelite/Lab3/Lab3/Lab3/question2.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/question2.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/question2.c$(PreprocessSuffix): question2.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/question2.c$(PreprocessSuffix) question2.c

##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


