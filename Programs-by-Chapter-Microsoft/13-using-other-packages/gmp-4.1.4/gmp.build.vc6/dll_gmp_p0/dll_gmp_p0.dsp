# Microsoft Developer Studio Project File - Name="dll_gmp_p0" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=dll_gmp_p0 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "dll_gmp_p0.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dll_gmp_p0.mak" CFG="dll_gmp_p0 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dll_gmp_p0 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dll_gmp_p0 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_WIN32" /D "__GMP_LIBGMP_DLL" /D "__GMP_WITHIN_GMP" /D "_PRZ_P0" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORT" /D "_WINDLL" /D "__GMP_LIBGMP_DLL" /D "__GMP_WITHIN_GMP" /YX /FD /GZ /Tp"..\..\cxx\isfuns.cc" /Tp"..\..\cxx\ismpf.cc" /Tp"..\..\cxx\ismpq.cc" /Tp"..\..\cxx\ismpz.cc" /Tp"..\..\cxx\osdoprnti.cc" /Tp"..\..\cxx\osfuns.cc" /Tp"..\..\cxx\osmpf.cc" /Tp"..\..\cxx\osmpq.cc" /Tp"..\..\cxx\osmpz.cc" /c
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /implib:"..\dll\gmp_p0d.lib" /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /out:"..\dll\gmp_p0d.dll" /implib:"..\dll\gmp_p0d.lib" /pdbtype:sept

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_WIN32" /D "__GMP_LIBGMP_DLL" /D "__GMP_WITHIN_GMP" /D "_PRZ_P0" /D "_MBCS" /GF /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORT" /D "__GMP_LIBGMP_DLL" /D "__GMP_WITHIN_GMP" /YX /FD /Tp"..\..\cxx\isfuns.cc" /Tp"..\..\cxx\ismpf.cc" /Tp"..\..\cxx\ismpq.cc" /Tp"..\..\cxx\ismpz.cc" /Tp"..\..\cxx\osdoprnti.cc" /Tp"..\..\cxx\osfuns.cc" /Tp"..\..\cxx\osmpf.cc" /Tp"..\..\cxx\osmpq.cc" /Tp"..\..\cxx\osmpz.cc" /c
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:IX86 /out:"..\dll\gmp_p0.dll" /implib:"..\dll\gmp_p0.lib" /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /dll /pdb:"Release/gmp_p0.pdb" /machine:IX86 /out:"..\dll\gmp.dll" /implib:"..\dll\gmp.lib" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "dll_gmp_p0 - Win32 Debug"
# Name "dll_gmp_p0 - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Group "cpp"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\cxx\isfuns.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpf.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpq.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\ismpz.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\osdoprnti.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\osfuns.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpf.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpq.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\cxx\osmpz.cc

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/cpp/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/cpp/"

!ENDIF 

# End Source File
# End Group
# Begin Group "scanf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\scanf\doscan.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\fscanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\fscanffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\scanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\sscanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\sscanffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vfscanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vscanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vsscanf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/scanf/"
# ADD CPP /nologo /GX /Fd"debug/scanf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX /Fd"release/scanf/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Group "mpf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpf\abs.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\add.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\add_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ceilfloor.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\clear.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\dump.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\eq.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_sint.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_slong.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_sshort.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_uint.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_ulong.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_ushort.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_d_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_dfl_prec.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_prc.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\init.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\init2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\inp_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\int_p.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\neg.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\out_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\pow_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\random2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\reldiff.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_dfl_prec.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_prc.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_prc_raw.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_q.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_z.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\size.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sqrt.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sqrt_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sub.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sub_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\swap.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\trunc.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ui_div.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ui_sub.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\urandomb.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpf/"
# ADD CPP /nologo /GX /Fd"debug/mpf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX /Fd"release/mpf/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Group "mpq"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpq\abs.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\aors.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\canonicalize.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\clear.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\div.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\equal.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_den.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_num.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\init.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\inp_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\inv.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\md_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\mul.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\neg.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\out_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_den.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_f.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_num.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_z.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\swap.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpq/"
# ADD CPP /nologo /GX /Fd"debug/mpq/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX /Fd"release/mpq/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Group "mpz"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpz\abs.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\add.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\add_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\and.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\aorsmul.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\aorsmul_i.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\array_init.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\bin_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\bin_uiui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_q.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_q_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_qr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_qr_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_r.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_r_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cfdiv_q_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cfdiv_r_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\clear.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\clrbit.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\com.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\dive_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divegcd.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divexact.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\dump.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\export.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fac_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_q.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_q_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_qr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_qr_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_r.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_r_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fib2_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fib_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_sint.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_slong.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_sshort.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_uint.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_ulong.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_ushort.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcd.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcd_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcdext.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_d_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\getlimbn.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\hamdist.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\import.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\init.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\init2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\inp_raw.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\inp_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\invert.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ior.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\jacobi.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronsz.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronuz.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronzs.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronzu.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lcm.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lcm_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lucnum2_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lucnum_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\millerrabin.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mod.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\n_pow_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\neg.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\nextprime.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\out_raw.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\out_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\perfpow.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\perfsqr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\popcount.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\pow_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\powm.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\powm_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\pprime_p.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\random.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\random2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\realloc.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\realloc2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\remove.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\root.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\rrandomb.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\scan0.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\scan1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_d.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_f.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_q.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_si.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\setbit.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\size.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sizeinbase.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sqrt.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sqrtrem.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sub.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sub_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\swap.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_qr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_qr_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r_2exp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tstbit.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ui_pow_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ui_sub.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\urandomb.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\urandomm.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\xor.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpz/"
# ADD CPP /nologo /GX /Fd"debug/mpz/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX /Fd"release/mpz/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Group "printf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\printf\asprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\asprntffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprnt.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprntf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprnti.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\fprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obprntffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obvprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\printf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\printffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\..\printf\repl-vsnprintf.c"

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\snprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\snprntffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\sprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\sprintffuns.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vasprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vfprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vsnprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vsprintf.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/printf/"
# ADD CPP /nologo /GX /Fd"debug/printf/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX /Fd"release/printf/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Group "mpn_p0"

# PROP Default_Filter ""
# Begin Group "Assembler"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpn\x86i\aors_n.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\aors_n.asm
InputName=aors_n

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\aors_n.asm
InputName=aors_n

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\aorsmul_1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\aorsmul_1.asm
InputName=aorsmul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\aorsmul_1.asm
InputName=aorsmul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\copyd.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\copyd.asm
InputName=copyd

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\copyd.asm
InputName=copyd

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\copyi.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\copyi.asm
InputName=copyi

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\copyi.asm
InputName=copyi

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\dive_1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\dive_1.asm
InputName=dive_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\dive_1.asm
InputName=dive_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\diveby3.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\diveby3.asm
InputName=diveby3

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\diveby3.asm
InputName=diveby3

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\divrem_1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\divrem_1.asm
InputName=divrem_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\divrem_1.asm
InputName=divrem_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\lshift.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\lshift.asm
InputName=lshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\lshift.asm
InputName=lshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mod_1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mod_1.asm
InputName=mod_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mod_1.asm
InputName=mod_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mod_34lsub1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mod_34lsub1.asm
InputName=mod_34lsub1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mod_34lsub1.asm
InputName=mod_34lsub1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mul_1.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mul_1.asm
InputName=mul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mul_1.asm
InputName=mul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mul_basecase.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mul_basecase.asm
InputName=mul_basecase

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mul_basecase.asm
InputName=mul_basecase

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\rshift.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\rshift.asm
InputName=rshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\rshift.asm
InputName=rshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\udiv.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\udiv.asm
InputName=udiv

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\udiv.asm
InputName=udiv

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\umul.asm

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\umul.asm
InputName=umul

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\umul.asm
InputName=umul

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -DDLL -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\mpn\generic\add.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\add_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\addsub_n.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\bdivmod.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\cmp.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\dc_divrem_n.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divis.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divrem.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divrem_2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\dump.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\fib2_ui.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcd.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcd_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcdext.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\get_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\hamdist.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\jacbase.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mode1o.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\mp_bases.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul_fft.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul_n.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\perfsqr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\popcount.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pow_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pre_divrem_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pre_mod_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\random.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\random2.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\rootrem.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sb_divrem_mn.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\scan0.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\scan1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\set_str.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sizeinbase.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sqr_basecase.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sqrtrem.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sub.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sub_1.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\tdiv_qr.c

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Intermediate_Dir "debug/mpn/"
# ADD CPP /nologo /GX /Fd"debug/mpn/VC60.pdb" /GZ

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Intermediate_Dir "release/mpn/"
# ADD CPP /nologo /GX /Fd"release/mpn/VC60.pdb"

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\ansi2knr.c
# End Source File
# Begin Source File

SOURCE=..\..\assert.c
# End Source File
# Begin Source File

SOURCE=..\..\compat.c
# End Source File
# Begin Source File

SOURCE=..\..\errno.c
# End Source File
# Begin Source File

SOURCE="..\..\extract-dbl.c"
# End Source File
# Begin Source File

SOURCE="..\..\insert-dbl.c"
# End Source File
# Begin Source File

SOURCE=..\..\memory.c
# End Source File
# Begin Source File

SOURCE=..\..\mp_bpl.c
# End Source File
# Begin Source File

SOURCE=..\..\mp_clz_tab.c
# End Source File
# Begin Source File

SOURCE=..\..\mp_minv_tab.c
# End Source File
# Begin Source File

SOURCE=..\..\mp_set_fns.c
# End Source File
# Begin Source File

SOURCE=..\..\rand.c
# End Source File
# Begin Source File

SOURCE=..\..\randclr.c
# End Source File
# Begin Source File

SOURCE=..\..\randdef.c
# End Source File
# Begin Source File

SOURCE=..\..\randlc.c
# End Source File
# Begin Source File

SOURCE=..\..\randlc2s.c
# End Source File
# Begin Source File

SOURCE=..\..\randlc2x.c
# End Source File
# Begin Source File

SOURCE=..\..\randraw.c
# End Source File
# Begin Source File

SOURCE=..\..\rands.c
# End Source File
# Begin Source File

SOURCE=..\..\randsd.c
# End Source File
# Begin Source File

SOURCE=..\..\randsdui.c
# End Source File
# Begin Source File

SOURCE=..\..\version.c
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

SOURCE=".\gmp-p0-resource.h"
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

SOURCE="..\config-vc6.p0"

!IF  "$(CFG)" == "dll_gmp_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Copying config.h for P0 Build
InputDir=\gts\gmp-4.1.3.1\gmp.build.vc6
InputPath="..\config-vc6.p0"
InputName=config-vc6

"$(InputDir)\config.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputDir)\$(InputName).p0 $(InputDir)\config.h

# End Custom Build

!ELSEIF  "$(CFG)" == "dll_gmp_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Copying config.h for P0 Build
InputDir=\gts\gmp-4.1.3.1\gmp.build.vc6
InputPath="..\config-vc6.p0"
InputName=config-vc6

"$(InputDir)\config.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputDir)\$(InputName).p0 $(InputDir)\config.h

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\gmp-p0-ver.rc"
# End Source File
# End Target
# End Project
