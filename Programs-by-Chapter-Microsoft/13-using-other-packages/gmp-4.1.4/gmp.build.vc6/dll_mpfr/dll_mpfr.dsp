# Microsoft Developer Studio Project File - Name="dll_mpfr" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=dll_mpfr - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "dll_mpfr.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "dll_mpfr.mak" CFG="dll_mpfr - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "dll_mpfr - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "dll_mpfr - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "dll_mpfr - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "_DEBUG" /D "_WIN32" /D "__GMP_LIBGMP_DLL" /D "__MPFR_LIBGMP_DLL" /D "__MPFR_WITHIN_MPFR" /D "_MBCS" /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORT" /D "_WINDLL" /D "__GMP_LIBGMP_DLL" /D "__MPFR_LIBGMP_DLL" /D "__MPFR_WITHIN_MPFR" /D "_PRZ_GC" /Fp"Debug/dll_mpfr_gc.pch" /YX /FD /GZ /c
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\dll\gmp.lib /nologo /subsystem:windows /dll /pdb:"Debug\mpfrdll.pdb" /debug /machine:IX86 /out:"..\dll\mpfr.dll" /implib:"..\dll\mpfr.lib" /pdbtype:sept
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\dll\gmp.lib /nologo /dll /pdb:"Debug\mpfrdll.pdb" /debug /machine:IX86 /out:"..\dll\mpfrd.dll" /implib:"..\dll\mpfrd.lib" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "dll_mpfr - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "WIN32" /D "NDEBUG" /D "_WIN32" /D "__GMP_LIBGMP_DLL" /D "__MPFR_LIBGMP_DLL" /D "__MPFR_WITHIN_MPFR" /D "_MBCS" /c
# ADD CPP /nologo /MT /W3 /GX /I "..\\" /I "..\..\\" /I "..\..\mpn\generic" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "DLL_EXPORT" /D "__GMP_LIBGMP_DLL" /D "__MPFR_LIBGMP_DLL" /D "__MPFR_WITHIN_MPFR" /D "_PRZ_GC" /YX /FD /c
# ADD BASE MTL /nologo /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409
# ADD RSC /l 0x409
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\dll\gmp.lib /nologo /subsystem:windows /dll /debug /machine:IX86 /out:"..\dll\mpfr.dll" /implib:"..\dll\mpfr.lib" /pdbtype:sept /opt:ref /opt:icf
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\dll\gmp.lib /nologo /subsystem:console /dll /machine:IX86 /out:"..\dll\mpfr.dll" /implib:"..\dll\mpfr.lib" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "dll_mpfr - Win32 Debug"
# Name "dll_mpfr - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\acos.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\acosh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add1.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add_one_ulp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\add_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\agm.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\asin.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\asinh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\atan.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\atanh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cbrt.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\clear.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\clears.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_abs.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_d.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cmp_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\comparisons.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_euler.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_log2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\const_pi.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\copysign.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cos.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\cosh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\dim.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_2ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\div_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\dump.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\eq.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\erf.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exceptions.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp3.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\exp_2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\expm1.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\extract.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\factorial.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_sint.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_slong.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_sshort.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_uint.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_ulong.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_ushort.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fma.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\frac.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\gamma.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_d.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_ld.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_str.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\get_z_exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\gmp_op.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\hypot.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\init.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\init2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inits.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inits2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\inp_str.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isinf.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isinteger.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isnan.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\isnum.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log10.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log1p.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\log2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\minmax.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_2ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mul_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\neg.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\next.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\out_str.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow_si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\pow_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\powerof2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\print_raw.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\print_rnd_mode.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\random.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\random2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\reldiff.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\rint.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\rnd_mode.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\round_prec.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\save_expo.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_d.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_dfl_prec.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_exp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_f.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_inf.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_ld.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_nan.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_prc_raw.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_prec.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_q.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_rnd.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_si.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_str.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_str_raw.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\set_z.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\setmax.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\setmin.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sin.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sin_cos.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sinh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sqrt.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sqrt_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub1.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub_one_ulp.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\sub_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\swap.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\tan.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\tanh.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\uceil_exp2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\uceil_log2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ufloor_log2.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ui_div.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ui_pow.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ui_pow_ui.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\ui_sub.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\urandomb.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\volatile.c"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\zeta.c"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;inc;xsd"
# Begin Source File

SOURCE=..\config.h
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_s.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\fits_u.h"
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

SOURCE="..\..\mpfr-2.0.3\log_b2.h"
# End Source File
# Begin Source File

SOURCE=..\..\longlong.h
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mpf2mpfr.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mpfr-impl.h"
# End Source File
# Begin Source File

SOURCE=".\mpfr-resource.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mpfr-test.h"
# End Source File
# Begin Source File

SOURCE="..\..\mpfr-2.0.3\mpfr.h"
# End Source File
# End Group
# Begin Source File

SOURCE=".\mpfr-ver.rc"
# End Source File
# End Target
# End Project
