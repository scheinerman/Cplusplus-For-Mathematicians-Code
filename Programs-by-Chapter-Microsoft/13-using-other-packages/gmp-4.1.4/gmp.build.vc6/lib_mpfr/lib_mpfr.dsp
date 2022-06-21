# Microsoft Developer Studio Project File - Name="lib_mpfr" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lib_mpfr - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "lib_mpfr.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "lib_mpfr.mak" CFG="lib_mpfr - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "lib_mpfr - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lib_mpfr - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lib_mpfr - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "_DEBUG" /D "_WIN32" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "_DEBUG" /D "_WIN32" /D "_MBCS" /GZ /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\mpfr.lib"
# ADD LIB32 /nologo /out:"..\lib\mpfrd.lib"

!ELSEIF  "$(CFG)" == "lib_mpfr - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_MBCS" /c
# ADD CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_LIB" /D "_WIN32" /D "_MBCS" /c
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"..\lib\mpfr.lib"
# ADD LIB32 /nologo /out:"..\lib\mpfr.lib"

!ENDIF 

# Begin Target

# Name "lib_mpfr - Win32 Debug"
# Name "lib_mpfr - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\acos.c"
DEP_CPP_ACOS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\acosh.c"
DEP_CPP_ACOSH=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add.c"
DEP_CPP_ADD_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add1.c"
DEP_CPP_ADD1_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add_one_ulp.c"
DEP_CPP_ADD_O=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add_ui.c"
DEP_CPP_ADD_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\agm.c"
DEP_CPP_AGM_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\asin.c"
DEP_CPP_ASIN_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\asinh.c"
DEP_CPP_ASINH=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\atan.c"
DEP_CPP_ATAN_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\generic.c"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\atanh.c"
DEP_CPP_ATANH=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cbrt.c"
DEP_CPP_CBRT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\clear.c"
DEP_CPP_CLEAR=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\clears.c"
DEP_CPP_CLEARS=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp.c"
DEP_CPP_CMP_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp2.c"
DEP_CPP_CMP2_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_abs.c"
DEP_CPP_CMP_A=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_d.c"
DEP_CPP_CMP_D=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_si.c"
DEP_CPP_CMP_S=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_ui.c"
DEP_CPP_CMP_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\comparisons.c"
DEP_CPP_COMPA=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_euler.c"
DEP_CPP_CONST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_log2.c"
DEP_CPP_CONST_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\generic.c"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_pi.c"
DEP_CPP_CONST_P=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\generic.c"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\copysign.c"
DEP_CPP_COPYS=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cos.c"
DEP_CPP_COS_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cosh.c"
DEP_CPP_COSH_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\dim.c"
DEP_CPP_DIM_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div.c"
DEP_CPP_DIV_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2exp.c"
DEP_CPP_DIV_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2si.c"
DEP_CPP_DIV_2S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2ui.c"
DEP_CPP_DIV_2U=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_ui.c"
DEP_CPP_DIV_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\dump.c"
DEP_CPP_DUMP_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\eq.c"
DEP_CPP_EQ_C44=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\erf.c"
DEP_CPP_ERF_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exceptions.c"
DEP_CPP_EXCEP=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp.c"
DEP_CPP_EXP_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp2.c"
DEP_CPP_EXP2_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp3.c"
DEP_CPP_EXP3_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp_2.c"
DEP_CPP_EXP_2=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\expm1.c"
DEP_CPP_EXPM1=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\extract.c"
DEP_CPP_EXTRA=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\factorial.c"
DEP_CPP_FACTO=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_sint.c"
DEP_CPP_FITS_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_s.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_slong.c"
DEP_CPP_FITS_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_s.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_sshort.c"
DEP_CPP_FITS_SS=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_s.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_uint.c"
DEP_CPP_FITS_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_u.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_ulong.c"
DEP_CPP_FITS_UL=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_u.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_ushort.c"
DEP_CPP_FITS_US=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\fits_u.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fma.c"
DEP_CPP_FMA_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\frac.c"
DEP_CPP_FRAC_=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\gamma.c"
DEP_CPP_GAMMA=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_d.c"
DEP_CPP_GET_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_exp.c"
DEP_CPP_GET_E=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_ld.c"
DEP_CPP_GET_L=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_si.c"
DEP_CPP_GET_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_str.c"
DEP_CPP_GET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_ui.c"
DEP_CPP_GET_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_z_exp.c"
DEP_CPP_GET_Z=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\gmp_op.c"
DEP_CPP_GMP_O=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\hypot.c"
DEP_CPP_HYPOT=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\init.c"
DEP_CPP_INIT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\init2.c"
DEP_CPP_INIT2=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inits.c"
DEP_CPP_INITS=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inits2.c"
DEP_CPP_INITS2=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inp_str.c"
DEP_CPP_INP_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isinf.c"
DEP_CPP_ISINF=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isinteger.c"
DEP_CPP_ISINT=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isnan.c"
DEP_CPP_ISNAN=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isnum.c"
DEP_CPP_ISNUM=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log.c"
DEP_CPP_LOG_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log10.c"
DEP_CPP_LOG10=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log1p.c"
DEP_CPP_LOG1P=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log2.c"
DEP_CPP_LOG2_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\minmax.c"
DEP_CPP_MINMA=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul.c"
DEP_CPP_MUL_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2exp.c"
DEP_CPP_MUL_2=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2si.c"
DEP_CPP_MUL_2S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2ui.c"
DEP_CPP_MUL_2U=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_ui.c"
DEP_CPP_MUL_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\neg.c"
DEP_CPP_NEG_C=\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\next.c"
DEP_CPP_NEXT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\out_str.c"
DEP_CPP_OUT_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow.c"
DEP_CPP_POW_C=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow_si.c"
DEP_CPP_POW_S=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow_ui.c"
DEP_CPP_POW_U=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\powerof2.c"
DEP_CPP_POWER=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\print_raw.c"
DEP_CPP_PRINT=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\print_rnd_mode.c"
DEP_CPP_PRINT_=\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\random.c"
DEP_CPP_RANDO=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\random2.c"
DEP_CPP_RANDOM=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\reldiff.c"
DEP_CPP_RELDI=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\rint.c"
DEP_CPP_RINT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\rnd_mode.c"
DEP_CPP_RND_M=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-test.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\round_prec.c"
DEP_CPP_ROUND=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\save_expo.c"
DEP_CPP_SAVE_=\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set.c"
DEP_CPP_SET_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_d.c"
DEP_CPP_SET_D=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_dfl_prec.c"
DEP_CPP_SET_DF=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_exp.c"
DEP_CPP_SET_E=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_f.c"
DEP_CPP_SET_F=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_inf.c"
DEP_CPP_SET_I=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_ld.c"
DEP_CPP_SET_L=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_nan.c"
DEP_CPP_SET_N=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_prc_raw.c"
DEP_CPP_SET_P=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_prec.c"
DEP_CPP_SET_PR=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_q.c"
DEP_CPP_SET_Q=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_rnd.c"
DEP_CPP_SET_R=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_si.c"
DEP_CPP_SET_S=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_str.c"
DEP_CPP_SET_ST=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\log_b2.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_str_raw.c"
DEP_CPP_SET_STR=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_ui.c"
DEP_CPP_SET_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_z.c"
DEP_CPP_SET_Z=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\setmax.c"
DEP_CPP_SETMA=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\setmin.c"
DEP_CPP_SETMI=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sin.c"
DEP_CPP_SIN_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sin_cos.c"
DEP_CPP_SIN_CO=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sinh.c"
DEP_CPP_SINH_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sqrt.c"
DEP_CPP_SQRT_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sqrt_ui.c"
DEP_CPP_SQRT_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub.c"
DEP_CPP_SUB_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub1.c"
DEP_CPP_SUB1_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub_one_ulp.c"
DEP_CPP_SUB_O=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub_ui.c"
DEP_CPP_SUB_U=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\swap.c"
DEP_CPP_SWAP_=\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\tan.c"
DEP_CPP_TAN_C=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\tanh.c"
DEP_CPP_TANH_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\uceil_exp2.c"
DEP_CPP_UCEIL=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\uceil_log2.c"
DEP_CPP_UCEIL_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ufloor_log2.c"
DEP_CPP_UFLOO=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\ui_div.c
DEP_CPP_UI_DI=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr\mpfr-impl.h"\
	"..\..\mpfr\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\ui_pow.c
DEP_CPP_UI_PO=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr\mpfr-impl.h"\
	"..\..\mpfr\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\ui_pow_ui.c
DEP_CPP_UI_POW=\
	"..\..\mpfr\mpfr-impl.h"\
	"..\..\mpfr\mpfr.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\ui_sub.c
DEP_CPP_UI_SU=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr\mpfr-impl.h"\
	"..\..\mpfr\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\urandomb.c
DEP_CPP_URAND=\
	"..\..\gmp-impl.h"\
	"..\..\longlong.h"\
	"..\..\mpfr\mpfr-impl.h"\
	"..\..\mpfr\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\volatile.c"
DEP_CPP_VOLAT=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
	"..\..\mpn\generic\gmp-mparam.h"\
	"..\config.h"\
	"..\gmp.h"\
	
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\zeta.c"
DEP_CPP_ZETA_=\
	"..\..\gmp-impl.h"\
	"..\..\mpfr-2.0.3\mpfr-impl.h"\
	"..\..\mpfr-2.0.3\mpfr.h"\
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

SOURCE=..\..\mpfr\fits_s.h
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\fits_u.h
# End Source File
# Begin Source File

SOURCE="..\..\gmp-impl.h"
# End Source File
# Begin Source File

SOURCE=..\gmp.h
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\log_b2.h
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\mpf2mpfr.h
# End Source File
# Begin Source File

SOURCE="..\..\mpfr\mpfr-impl.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr\mpfr-math.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr\mpfr-test.h"
# End Source File
# Begin Source File

SOURCE=..\..\mpfr\mpfr.h
# End Source File
# End Group
# End Target
# End Project
