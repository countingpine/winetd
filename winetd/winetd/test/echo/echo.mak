# Microsoft Developer Studio Generated NMAKE File, Based on echo.dsp
!IF "$(CFG)" == ""
CFG=echo - Win32 Release
!MESSAGE No configuration specified. Defaulting to ECHO - WIN32 RELEASE.
!ENDIF 

!IF "$(CFG)" != "echo - Win32 Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "echo.mak" CFG="ECHO - WIN32 RELEASE"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "echo - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

OUTDIR=.
INTDIR=.
# Begin Custom Macros
OutDir=.
# End Custom Macros

ALL : "$(OUTDIR)\echo.exe"


CLEAN :
	-@erase "$(INTDIR)\echo.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\echo.exe"

CPP=cl.exe
CPP_PROJ=/nologo /ML /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /FD /c 

.c.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\echo.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:console /pdb:none /machine:I386 /out:"$(OUTDIR)\echo.exe" 
LINK32_OBJS= \
	"$(INTDIR)\echo.obj"

"$(OUTDIR)\echo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("echo.dep")
!INCLUDE "echo.dep"
!ELSE 
!MESSAGE Warning: cannot find "echo.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "echo - Win32 Release"
SOURCE=.\echo.cpp

"$(INTDIR)\echo.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

