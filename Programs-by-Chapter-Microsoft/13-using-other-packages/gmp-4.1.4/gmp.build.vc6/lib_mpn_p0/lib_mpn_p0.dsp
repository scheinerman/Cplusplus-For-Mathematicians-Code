# Microsoft Developer Studio Project File - Name="lib_mpn_p0" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lib_mpn_p0 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lib_mpn_p0.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_mpn_p0.mak" CFG="lib_mpn_p0 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_mpn_p0 - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_mpn_p0 - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P0" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_MBCS" /GZ /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\mpn_p0.lib"
# ADD LIB32 /nologo /out:"..\lib\mpn_p0d.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\lib\mpn_p0d.lib ..\lib\mpnd.lib
# End Special Build Tool

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P0" /D "_MBCS" /c
# ADD CPP /nologo /MT /W3 /GX /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_MBCS" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\mpn_p0.lib"
# ADD LIB32 /nologo /out:"..\lib\mpn_p0.lib"
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=copy ..\lib\mpn_p0.lib ..\lib\mpn.lib
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "lib_mpn_p0 - Win32 Debug"
# Name "lib_mpn_p0 - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Group "Assembler"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpn\x86i\aors_n.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\aors_n.asm
InputName=aors_n

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\aors_n.asm
InputName=aors_n

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\aorsmul_1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\aorsmul_1.asm
InputName=aorsmul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\aorsmul_1.asm
InputName=aorsmul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\copyd.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\copyd.asm
InputName=copyd

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\copyd.asm
InputName=copyd

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\copyi.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\copyi.asm
InputName=copyi

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\copyi.asm
InputName=copyi

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\dive_1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\dive_1.asm
InputName=dive_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\dive_1.asm
InputName=dive_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\diveby3.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\diveby3.asm
InputName=diveby3

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\diveby3.asm
InputName=diveby3

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\divrem_1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\divrem_1.asm
InputName=divrem_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\divrem_1.asm
InputName=divrem_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\lshift.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\lshift.asm
InputName=lshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\lshift.asm
InputName=lshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mod_1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mod_1.asm
InputName=mod_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mod_1.asm
InputName=mod_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mod_34lsub1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mod_34lsub1.asm
InputName=mod_34lsub1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mod_34lsub1.asm
InputName=mod_34lsub1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mul_1.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mul_1.asm
InputName=mul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mul_1.asm
InputName=mul_1

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\mul_basecase.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\mul_basecase.asm
InputName=mul_basecase

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\mul_basecase.asm
InputName=mul_basecase

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\rshift.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\rshift.asm
InputName=rshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\rshift.asm
InputName=rshift

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\udiv.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\udiv.asm
InputName=udiv

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\udiv.asm
InputName=udiv

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpn\x86i\umul.asm

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Debug
InputPath=..\..\mpn\x86i\umul.asm
InputName=umul

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputDir=\gts\gmp-4.1.3.1\mpn\x86i
IntDir=.\Release
InputPath=..\..\mpn\x86i\umul.asm
InputName=umul

"$(IntDir)/mpn/$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasm -O9 -Xvc -f win32 -i "$(InputDir)/" -o "$(IntDir)/mpn/$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\mpn\generic\add.c
DEP_CPP_ADD_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\add_1.c
DEP_CPP_ADD_1=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\addsub_n.c
DEP_CPP_ADDSU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_ADDSU=\
	"..\..\mpn\generic\timing.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\bdivmod.c
DEP_CPP_BDIVM=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\cmp.c
DEP_CPP_CMP_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\dc_divrem_n.c
DEP_CPP_DC_DI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divis.c
DEP_CPP_DIVIS=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divrem.c
DEP_CPP_DIVRE=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\divrem_2.c
DEP_CPP_DIVREM=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\dump.c
DEP_CPP_DUMP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\fib2_ui.c
DEP_CPP_FIB2_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcd.c
DEP_CPP_GCD_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcd_1.c
DEP_CPP_GCD_1=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\gcdext.c
DEP_CPP_GCDEX=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\get_str.c
DEP_CPP_GET_S=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\hamdist.c
DEP_CPP_HAMDI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\jacbase.c
DEP_CPP_JACBA=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mode1o.c
DEP_CPP_MODE1=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\mp_bases.c
DEP_CPP_MP_BA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul.c
DEP_CPP_MUL_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul_fft.c
DEP_CPP_MUL_F=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\mul_n.c
DEP_CPP_MUL_N=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\perfsqr.c
DEP_CPP_PERFS=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\popcount.c
DEP_CPP_POPCO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pow_1.c
DEP_CPP_POW_1=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pre_divrem_1.c
DEP_CPP_PRE_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\pre_mod_1.c
DEP_CPP_PRE_M=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\random.c
DEP_CPP_RANDO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\random2.c
DEP_CPP_RANDOM=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\rootrem.c
DEP_CPP_ROOTR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sb_divrem_mn.c
DEP_CPP_SB_DI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\scan0.c
DEP_CPP_SCAN0=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\scan1.c
DEP_CPP_SCAN1=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\set_str.c
DEP_CPP_SET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sizeinbase.c
DEP_CPP_SIZEI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sqr_basecase.c
DEP_CPP_SQR_B=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sqrtrem.c
DEP_CPP_SQRTR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sub.c
DEP_CPP_SUB_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\sub_1.c
DEP_CPP_SUB_1=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpn\generic\tdiv_qr.c
DEP_CPP_TDIV_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
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

SOURCE=..\..\longlong.h
# End Source File
# End Group
# Begin Source File

SOURCE="..\config-vc6.p0"

!IF  "$(CFG)" == "lib_mpn_p0 - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build - Copying config.h for P0 Build
InputDir=\gts\gmp-4.1.3.1\gmp.build.vc6
InputPath="..\config-vc6.p0"
InputName=config-vc6

"$(InputDir)\config.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	copy $(InputDir)\$(InputName).p0 $(InputDir)\config.h

# End Custom Build

!ELSEIF  "$(CFG)" == "lib_mpn_p0 - Win32 Release"

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
# End Target
# End Project
