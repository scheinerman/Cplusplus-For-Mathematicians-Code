# Microsoft Developer Studio Project File - Name="lib_gmpxx" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lib_gmpxx - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lib_gmpxx.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_gmpxx.mak" CFG="lib_gmpxx - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_gmpxx - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_gmpxx - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lib_gmpxx - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /win32
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /GZ /TP /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\gmpxx.lib"
# ADD LIB32 /nologo /out:"..\lib\lib_gmpxxd.lib"

!ELSEIF  "$(CFG)" == "lib_gmpxx - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /win32
# ADD BASE CPP /nologo /W3 /GX /Zi /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /c
# ADD CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /TP /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\gmpxx.lib"
# ADD LIB32 /nologo /out:"..\lib\gmpxx.lib"

!ENDIF 

# Begin Target

# Name "lib_gmpxx - Win32 Debug"
# Name "lib_gmpxx - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Source File

SOURCE=..\..\cxx\isfuns.cc
NODEP_CPP_ISFUN=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpf.cc
NODEP_CPP_ISMPF=\
	"..\..\cxx\config.h"\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpq.cc
NODEP_CPP_ISMPQ=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpz.cc
NODEP_CPP_ISMPZ=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\osdoprnti.cc
NODEP_CPP_OSDOP=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\osfuns.cc
NODEP_CPP_OSFUN=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpf.cc
NODEP_CPP_OSMPF=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpq.cc
NODEP_CPP_OSMPQ=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpz.cc
NODEP_CPP_OSMPZ=\
	"..\..\cxx\gmp-impl.h"\
	"..\..\cxx\gmp.h"\
	
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;inc;xsd"
# Begin Source File

SOURCE=..\config.h
# End Source File
# Begin Source File

SOURCE="..\..\gmp-impl.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpn\generic\gmp-mparam.h"
# End Source File
# Begin Source File

SOURCE=..\gmp.h
# End Source File
# Begin Source File

SOURCE=..\..\gmpxx.h
# End Source File
# Begin Source File

SOURCE=..\..\longlong.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\lib\gmp.lib
# End Source File
# End Target
# End Project
