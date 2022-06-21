# Microsoft Developer Studio Project File - Name="lib_gmp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lib_gmp - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lib_gmp.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_gmp.mak" CFG="lib_gmp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_gmp - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_gmp - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /GZ /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\gmp.lib"
# ADD LIB32 /nologo /out:"..\lib\gmpd.lib"

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /c
# ADD CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_PRZ_P4" /D "_MBCS" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\gmp.lib"
# ADD LIB32 /nologo /out:"..\lib\gmp.lib"

!ENDIF 

# Begin Target

# Name "lib_gmp - Win32 Debug"
# Name "lib_gmp - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter ""
# Begin Group "mpf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpf\abs.c
DEP_CPP_ABS_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\add.c
DEP_CPP_ADD_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\add_ui.c
DEP_CPP_ADD_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ceilfloor.c
DEP_CPP_CEILF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\clear.c
DEP_CPP_CLEAR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp.c
DEP_CPP_CMP_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_d.c
DEP_CPP_CMP_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_si.c
DEP_CPP_CMP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\cmp_ui.c
DEP_CPP_CMP_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div.c
DEP_CPP_DIV_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div_2exp.c
DEP_CPP_DIV_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\div_ui.c
DEP_CPP_DIV_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\dump.c
DEP_CPP_DUMP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\eq.c
DEP_CPP_EQ_C1a=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_sint.c
DEP_CPP_FITS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_s.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_slong.c
DEP_CPP_FITS_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_s.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_sshort.c
DEP_CPP_FITS_SS=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_s.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_uint.c
DEP_CPP_FITS_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_u.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_ulong.c
DEP_CPP_FITS_UL=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_u.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_ushort.c
DEP_CPP_FITS_US=\
	"..\..\gmp-impl.h"\
	"..\..\mpf\fits_u.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_d.c
DEP_CPP_GET_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_d_2exp.c
DEP_CPP_GET_D_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_dfl_prec.c
DEP_CPP_GET_DF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_prc.c
DEP_CPP_GET_P=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_si.c
DEP_CPP_GET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_str.c
DEP_CPP_GET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\get_ui.c
DEP_CPP_GET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\init.c
DEP_CPP_INIT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\init2.c
DEP_CPP_INIT2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\inp_str.c
DEP_CPP_INP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\int_p.c
DEP_CPP_INT_P=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset.c
DEP_CPP_ISET_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_d.c
DEP_CPP_ISET_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_si.c
DEP_CPP_ISET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_str.c
DEP_CPP_ISET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\iset_ui.c
DEP_CPP_ISET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul.c
DEP_CPP_MUL_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul_2exp.c
DEP_CPP_MUL_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\mul_ui.c
DEP_CPP_MUL_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\neg.c
DEP_CPP_NEG_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\out_str.c
DEP_CPP_OUT_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\pow_ui.c
DEP_CPP_POW_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\random2.c
DEP_CPP_RANDO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\reldiff.c
DEP_CPP_RELDI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set.c
DEP_CPP_SET_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_d.c
DEP_CPP_SET_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_dfl_prec.c
DEP_CPP_SET_DF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_prc.c
DEP_CPP_SET_P=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_prc_raw.c
DEP_CPP_SET_PR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_q.c
DEP_CPP_SET_Q=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_si.c
DEP_CPP_SET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_str.c
DEP_CPP_SET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_ui.c
DEP_CPP_SET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\set_z.c
DEP_CPP_SET_Z=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\size.c
DEP_CPP_SIZE_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sqrt.c
DEP_CPP_SQRT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sqrt_ui.c
DEP_CPP_SQRT_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sub.c
DEP_CPP_SUB_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\sub_ui.c
DEP_CPP_SUB_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\swap.c
DEP_CPP_SWAP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\trunc.c
DEP_CPP_TRUNC=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ui_div.c
DEP_CPP_UI_DI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\ui_sub.c
DEP_CPP_UI_SU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpf\urandomb.c
DEP_CPP_URAND=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# End Group
# Begin Group "mpq"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpq\abs.c
DEP_CPP_ABS_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\aors.c
DEP_CPP_AORS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\canonicalize.c
DEP_CPP_CANON=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\clear.c
DEP_CPP_CLEAR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp.c
DEP_CPP_CMP_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp_si.c
DEP_CPP_CMP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\cmp_ui.c
DEP_CPP_CMP_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\div.c
DEP_CPP_DIV_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\equal.c
DEP_CPP_EQUAL=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_d.c
DEP_CPP_GET_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_den.c
DEP_CPP_GET_DE=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_num.c
DEP_CPP_GET_N=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\get_str.c
DEP_CPP_GET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\init.c
DEP_CPP_INIT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\inp_str.c
DEP_CPP_INP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\inv.c
DEP_CPP_INV_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\md_2exp.c
DEP_CPP_MD_2E=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\mul.c
DEP_CPP_MUL_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\neg.c
DEP_CPP_NEG_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\out_str.c
DEP_CPP_OUT_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set.c
DEP_CPP_SET_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_d.c
DEP_CPP_SET_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_den.c
DEP_CPP_SET_DE=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_f.c
DEP_CPP_SET_F=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_num.c
DEP_CPP_SET_N=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_si.c
DEP_CPP_SET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_str.c
DEP_CPP_SET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_ui.c
DEP_CPP_SET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\set_z.c
DEP_CPP_SET_Z=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpq\swap.c
DEP_CPP_SWAP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpq"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpq/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# End Group
# Begin Group "mpz"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpz\abs.c
DEP_CPP_ABS_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\add.c
DEP_CPP_ADD_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\aors.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_ADD_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\add_ui.c
DEP_CPP_ADD_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\aors_ui.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\and.c
DEP_CPP_AND_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\aorsmul.c
DEP_CPP_AORSM=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\aorsmul_i.c
DEP_CPP_AORSMU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\array_init.c
DEP_CPP_ARRAY=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\bin_ui.c
DEP_CPP_BIN_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\bin_uiui.c
DEP_CPP_BIN_UI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_q.c
DEP_CPP_CDIV_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_q_ui.c
DEP_CPP_CDIV_Q=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_qr.c
DEP_CPP_CDIV_QR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_qr_ui.c
DEP_CPP_CDIV_QR_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_r.c
DEP_CPP_CDIV_R=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_r_ui.c
DEP_CPP_CDIV_R_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cdiv_ui.c
DEP_CPP_CDIV_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cfdiv_q_2exp.c
DEP_CPP_CFDIV=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cfdiv_r_2exp.c
DEP_CPP_CFDIV_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\clear.c
DEP_CPP_CLEAR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\clrbit.c
DEP_CPP_CLRBI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp.c
DEP_CPP_CMP_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_CMP_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_d.c
DEP_CPP_CMP_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_si.c
DEP_CPP_CMP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmp_ui.c
DEP_CPP_CMP_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs.c
DEP_CPP_CMPAB=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs_d.c
DEP_CPP_CMPABS=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cmpabs_ui.c
DEP_CPP_CMPABS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\com.c
DEP_CPP_COM_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong.c
DEP_CPP_CONG_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong_2exp.c
DEP_CPP_CONG_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\cong_ui.c
DEP_CPP_CONG_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\dive_ui.c
DEP_CPP_DIVE_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divegcd.c
DEP_CPP_DIVEG=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divexact.c
DEP_CPP_DIVEX=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis.c
DEP_CPP_DIVIS=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis_2exp.c
DEP_CPP_DIVIS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\divis_ui.c
DEP_CPP_DIVIS_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\dump.c
DEP_CPP_DUMP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\export.c
DEP_CPP_EXPOR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fac_ui.c
DEP_CPP_FAC_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_q.c
DEP_CPP_FDIV_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_q_ui.c
DEP_CPP_FDIV_Q=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_qr.c
DEP_CPP_FDIV_QR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_qr_ui.c
DEP_CPP_FDIV_QR_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_r.c
DEP_CPP_FDIV_R=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_r_ui.c
DEP_CPP_FDIV_R_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fdiv_ui.c
DEP_CPP_FDIV_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fib2_ui.c
DEP_CPP_FIB2_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fib_ui.c
DEP_CPP_FIB_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_sint.c
DEP_CPP_FITS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\fits_s.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_slong.c
DEP_CPP_FITS_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\fits_s.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_sshort.c
DEP_CPP_FITS_SS=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\fits_s.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_uint.c
DEP_CPP_FITS_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_ulong.c
DEP_CPP_FITS_UL=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_ushort.c
DEP_CPP_FITS_US=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcd.c
DEP_CPP_GCD_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_GCD_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcd_ui.c
DEP_CPP_GCD_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\gcdext.c
DEP_CPP_GCDEX=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_d.c
DEP_CPP_GET_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_d_2exp.c
DEP_CPP_GET_D_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_si.c
DEP_CPP_GET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_str.c
DEP_CPP_GET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\get_ui.c
DEP_CPP_GET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\getlimbn.c
DEP_CPP_GETLI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\hamdist.c
DEP_CPP_HAMDI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\import.c
DEP_CPP_IMPOR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\init.c
DEP_CPP_INIT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\init2.c
DEP_CPP_INIT2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\inp_raw.c
DEP_CPP_INP_R=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\inp_str.c
DEP_CPP_INP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\invert.c
DEP_CPP_INVER=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ior.c
DEP_CPP_IOR_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset.c
DEP_CPP_ISET_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_d.c
DEP_CPP_ISET_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_si.c
DEP_CPP_ISET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_str.c
DEP_CPP_ISET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\iset_ui.c
DEP_CPP_ISET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\jacobi.c
DEP_CPP_JACOB=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronsz.c
DEP_CPP_KRONS=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronuz.c
DEP_CPP_KRONU=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronzs.c
DEP_CPP_KRONZ=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\kronzu.c
DEP_CPP_KRONZU=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lcm.c
DEP_CPP_LCM_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lcm_ui.c
DEP_CPP_LCM_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lucnum2_ui.c
DEP_CPP_LUCNU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\lucnum_ui.c
DEP_CPP_LUCNUM=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\millerrabin.c
DEP_CPP_MILLE=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mod.c
DEP_CPP_MOD_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul.c
DEP_CPP_MUL_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_MUL_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_2exp.c
DEP_CPP_MUL_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_si.c
DEP_CPP_MUL_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\mul_i.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\mul_ui.c
DEP_CPP_MUL_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\mul_i.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\n_pow_ui.c
DEP_CPP_N_POW=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\neg.c
DEP_CPP_NEG_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\nextprime.c
DEP_CPP_NEXTP=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\out_raw.c
DEP_CPP_OUT_R=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\out_str.c
DEP_CPP_OUT_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\perfpow.c
DEP_CPP_PERFP=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\perfsqr.c
DEP_CPP_PERFS=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\popcount.c
DEP_CPP_POPCO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\pow_ui.c
DEP_CPP_POW_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\powm.c
DEP_CPP_POWM_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_POWM_=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\powm_ui.c
DEP_CPP_POWM_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\pprime_p.c
DEP_CPP_PPRIM=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\random.c
DEP_CPP_RANDOM=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\random2.c
DEP_CPP_RANDO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\realloc.c
DEP_CPP_REALL=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\realloc2.c
DEP_CPP_REALLO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\remove.c
DEP_CPP_REMOV=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\root.c
DEP_CPP_ROOT_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\rrandomb.c
DEP_CPP_RRAND=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\scan0.c
DEP_CPP_SCAN0=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\scan1.c
DEP_CPP_SCAN1=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set.c
DEP_CPP_SET_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_SET_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_d.c
DEP_CPP_SET_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_f.c
DEP_CPP_SET_F=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_q.c
DEP_CPP_SET_Q=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_si.c
DEP_CPP_SET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_str.c
DEP_CPP_SET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\set_ui.c
DEP_CPP_SET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\setbit.c
DEP_CPP_SETBI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\size.c
DEP_CPP_SIZE_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sizeinbase.c
DEP_CPP_SIZEI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sqrt.c
DEP_CPP_SQRT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sqrtrem.c
DEP_CPP_SQRTR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_SQRTR=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sub.c
DEP_CPP_SUB_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\aors.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_SUB_C=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\sub_ui.c
DEP_CPP_SUB_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\..\mpz\aors_ui.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\swap.c
DEP_CPP_SWAP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q.c
DEP_CPP_TDIV_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q_2exp.c
DEP_CPP_TDIV_Q=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_q_ui.c
DEP_CPP_TDIV_Q_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_qr.c
DEP_CPP_TDIV_QR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
NODEP_CPP_TDIV_QR=\
	"..\..\mpz\mp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_qr_ui.c
DEP_CPP_TDIV_QR_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r.c
DEP_CPP_TDIV_R=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r_2exp.c
DEP_CPP_TDIV_R_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_r_ui.c
DEP_CPP_TDIV_R_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tdiv_ui.c
DEP_CPP_TDIV_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\tstbit.c
DEP_CPP_TSTBI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ui_pow_ui.c
DEP_CPP_UI_PO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\ui_sub.c
DEP_CPP_UI_SU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\urandomb.c
DEP_CPP_URAND=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\urandomm.c
DEP_CPP_URANDO=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\mpz\xor.c
DEP_CPP_XOR_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/mpz"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/mpz/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# End Group
# Begin Group "printf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\printf\asprintf.c
DEP_CPP_ASPRI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\asprntffuns.c
DEP_CPP_ASPRN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprnt.c
DEP_CPP_DOPRN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprntf.c
DEP_CPP_DOPRNT=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\doprnti.c
DEP_CPP_DOPRNTI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\fprintf.c
DEP_CPP_FPRIN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obprintf.c
DEP_CPP_OBPRI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obprntffuns.c
DEP_CPP_OBPRN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\obvprintf.c
DEP_CPP_OBVPR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\printf.c
DEP_CPP_PRINT=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\printffuns.c
DEP_CPP_PRINTF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE="..\..\printf\repl-vsnprintf.c"
DEP_CPP_REPL_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\snprintf.c
DEP_CPP_SNPRI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\snprntffuns.c
DEP_CPP_SNPRN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\sprintf.c
DEP_CPP_SPRIN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\sprintffuns.c
DEP_CPP_SPRINT=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vasprintf.c
DEP_CPP_VASPR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vfprintf.c
DEP_CPP_VFPRI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vprintf.c
DEP_CPP_VPRIN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vsnprintf.c
DEP_CPP_VSNPR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\printf\vsprintf.c
DEP_CPP_VSPRI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/printf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/printf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# End Group
# Begin Group "scanf"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\scanf\doscan.c
DEP_CPP_DOSCA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\fscanf.c
DEP_CPP_FSCAN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\fscanffuns.c
DEP_CPP_FSCANF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\scanf.c
DEP_CPP_SCANF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\sscanf.c
DEP_CPP_SSCAN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\sscanffuns.c
DEP_CPP_SSCANF=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vfscanf.c
DEP_CPP_VFSCA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vscanf.c
DEP_CPP_VSCAN=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\scanf\vsscanf.c
DEP_CPP_VSSCA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	

!IF  "$(CFG)" == "lib_gmp - Win32 Debug"

# PROP Intermediate_Dir "Debug/scanf"
# ADD CPP /nologo /GX /GZ

!ELSEIF  "$(CFG)" == "lib_gmp - Win32 Release"

# PROP Intermediate_Dir "release/scanf/"
# ADD CPP /nologo /GX

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=..\..\ansi2knr.c
DEP_CPP_ANSI2=\
	"..\config.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\assert.c
DEP_CPP_ASSER=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\compat.c
DEP_CPP_COMPA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\errno.c
DEP_CPP_ERRNO=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\extract-dbl.c"
DEP_CPP_EXTRA=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\insert-dbl.c"
DEP_CPP_INSER=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\memory.c
DEP_CPP_MEMOR=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mp_bpl.c
DEP_CPP_MP_BP=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mp_clz_tab.c
DEP_CPP_MP_CL=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mp_minv_tab.c
DEP_CPP_MP_MI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mp_set_fns.c
DEP_CPP_MP_SE=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\rand.c
DEP_CPP_RAND_=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randclr.c
DEP_CPP_RANDC=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randdef.c
DEP_CPP_RANDD=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randlc.c
DEP_CPP_RANDL=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randlc2s.c
DEP_CPP_RANDLC=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randlc2x.c
DEP_CPP_RANDLC2=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randraw.c
DEP_CPP_RANDR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\rands.c
DEP_CPP_RANDS=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randsd.c
DEP_CPP_RANDSD=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\randsdui.c
DEP_CPP_RANDSDU=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\version.c
DEP_CPP_VERSI=\
	"..\..\gmp-impl.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\..\mpz\aors.h
# End Source File
# Begin Source File

SOURCE=..\..\mpz\aors_ui.h
# End Source File
# Begin Source File

SOURCE=..\config.h
# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_s.h
# End Source File
# Begin Source File

SOURCE=..\..\mpz\fits_s.h
# End Source File
# Begin Source File

SOURCE=..\..\mpf\fits_u.h
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
# Begin Source File

SOURCE=..\..\mpz\mul_i.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\lib\mpn.lib
# End Source File
# End Target
# End Project
