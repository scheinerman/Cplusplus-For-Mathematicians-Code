
Compiling GMP and MPFR with the VC++ 6.0 IDE
--------------------------------------------

First obtain the GMP-4.1.3 and MPFR-2.0.3 distributions. Unzip the
GMP-4.1.3 files into a directory tree with the GMP-4.1.3 directory
as the root.  Unzip the MPFR-2.0.3 files so that the directory 
MPFR-2.0.3 is within the GMP-4.1.3 directory (i.e the directories 
MPFR and MPFR-2.0.3 are at the same level in the directory tree).

Unzip the additional files in this distribution so that they are
merged into the above directory tree (i.w so that the VC_BUILD 
directory is within the GMP-4.1.3 directory).

There are slight differences between VC 7 and VC 6.  Because of this
the config.h file is slighly different.  The build automatically copies 
the correct file into config.h .

The GMP and MPFR  DLL builds are not dependant on any libraries.
If you are just building the DLLs skip ahead to the 
GMP  DLL Builds section.

If you wish to use the assembler files you will also need the NASM
open source x86 assembler. This assembler should be placed in the 
bin directory used by VC++, typically for VC6:

    Drive:\Program Files\Microsoft Visual Studio\VC98\bin

Using GMP and MPFR
------------------

Many applications that rely on GMP and MPFR also include the gmp.h 
and mpfr.h include files but it is impossible to be certain that 
these will match the versions of GMP and MPFR that are built by
this distribution. Hence when this distribution is being used 
with a GMP based application it is important to ensure that any 
GMP and MPFR include files used by such an application are those 
that are supplied here and not those that might have been supplied 
with the application itself.  This will often be only gmp.h and
mpfr.h but some other include files may also be involved.

The static libraries and DLLs built here use the _cdecl calling 
convention in which exported symbols have their C names prefixed 
with an extra '_' character.  Some applications expect the _stdcall
convention to be used in which there is an underscore prefix and a 
suffix of '@n' where n is the number of bytes used for the function
arguments on the stack.  Such applications will need to be modified
to work with the GMP and MPFR DLLs and libraries provided here. The 
alternative of attempting to build GMP and MPFR using the _stdcall 
convention is not recommended (and won't work with the assembler 
based builds anyway).


STATIC LIBRARIES
----------------

There are four subsidiary library projects:

lib_mpn_gc - builds mpn_gc.lib using the large integer code in C
lib_mpn_p0 - builds mpn_p0.lib using C and pentium assembler code
lib_mpn_p3 - builds mpn_p3.lib using C and P3 assembler code
lib_mpn_p4 - builds mpn_p4.lib using C and P4 assembler code

The GC build should run on any x86 processor.  
The P0 build is only intended for Pentium or higher Processors.
The P3 build is only intended for Pentium 3 or higher Processors.
The P4 build is intended for PEntium 4 Processors.

Before each of these is built the IDE uses a pre-build step to copy
the appropriate GMP configuation into config.h.  After each is built 
a post build step is used to copy the resulting to mpn.lib for use in 
building gmp.lib and gmpxx.lib.  Hence the GMP and GMPXX builds will 
always use the last subsidiary library that is built.  If necessary 
this behaviour can be changed by manually copying the appropriate 
configuration file to config.h and adding the related subsidiary 
library to the projects in place of mpn.lib.

Hence to build the lib_gmp release version library, first build the 
appropriate subsidiary library and then build the lib_gmp project.  
After lib_gmp has been built you can then build the lib_gmpxx and 
mpfr static libraries. The debug version of these libraries are built 
in the same way and give libraries with the same names except that a 
'd' is added (so that, for example, gmp.lib becomes gmpd.lib). If the 
debug versiosn are being built the mpn.lib library that is currently 
added to lib_gmp project must be removed and replaced by mpnd.lib.

The MPFR static library build assumes that this is intended to 
work with the lib_gmp or lib_gmpxx static libraries. 

All the static libraries are placed in the lib subdirectory within 
the vc_build subdirectory.

All the static libraries are placed in the lib subdirectory within 
the vc_build subdirectory.

lib_gmpxx
---------

VC++ 6.0 does not normally support the .cc file extension as either a 
C source file or a C++ source file.

Microsoft Knowledge Base Article 181506 describes the registry edits 
and complier settings to make VC++ 6.0 handle these files correctly.
Note that these changes are NOT reflected in any makefiles 
generated from within the IDE.

The MSKB article also states that warnings D4024 and D4027 can be
safely ignored.

Alternately, manually changing the file extension from .cc to .cpp 
works just as well and avoids editing the registry and adding extra 
compiler settings.

You are left to decide the best approach for you.  The project files 
are based on the MSKB article since it allows the compiler to handle 
other sources.

The lib_gmpxx can then be built after gmp.lib has been built since 
gmpxx.lib imports gmp.lib


Using the Static Libraries
--------------------------
To build a GMP C or C++ based application using the the static 
libraries all that needs to be done is to add the GMP or GMPXX
static libraries to the application build process.  To build an
MPFR based application add the MPFR library and the GMP or GMPXX
library as appropriate.

It is, of course, important to ensure that any libraries that are
used have been built for the target platform.




GMP DLL BUILDS
--------------

The GMP  DLL builds are not dependant on any libraries.
The GMP  DLL projects include the cpp files. If you do not want
these then for the DLL you want to build, go to the subdirectory
'cpp' in the project and exclude all the files in this directory 
from the build.

There are four GMP DLL build projects

dll_gmp_gc - uses the large integer code all in C 
dll_gmp_p0 - uses the C and assembler for the Intel pentium 
dll_gmp_p3 - uses the C and assembler for the Intel p3 
dll_gmp_p4 - uses the C and assembler for the Intel p4 

The GC build should run on any x86 processor.  
The P0 build is only intended for Pentium or higher Processors.
The P3 build is only intended for Pentium 3 or higher Processors.
The P4 build is intended for PEntium 4 Processors.

All of the release projects build gmp.dll, gmp.lib, and gmp.exp 
in the DLL directory. The debug projects build gmp_??d.lib .

NOTE! The gmp.lib produced by the dll build is not the same
as the gmp.lib produced by the library build.  It is a link
library for linking to the DLL, not a static library. 

Only one of the projects need to be built.


MPFR DLL BUILDS
---------------

The MPFR  DLL build is only dependant on the files created by 
the GMP.DLL build in the DLL directory.

There is one VC++ 6.0 MPFR  DLL build project.

dll_mpfr    - builds the MPFR DLL from the system's gmp.dll

The resulting mpfr.dll must have gmp.dll available to function.

The config.h MUST be the correct file fir the gmp.dll since there 
are issues that result from mixing.


ADDITIONAL DLL INFORMATION
--------------------------

Because the DLL file names were kept constant so that programs
could be linked to any of the GMP or MPFR  DLLs without regard
to processor optimizations; resource files have been added to
the VC++ 6.0 projects to set versioning information and other 
data in the DLL file properties.

Viewing the DLLs with the dependancy walker will show the GMP or
MPFR version.  Note that the numbers are X.X.X.Y where the X.X.X
represents the GMP or MPFR release number and the Y represents the 
versioning of the native MSVC port presented here.

Right clicking on the DLLs and selecting Properties provides 
additional information in the Special Build section concerning the
processor optimizations used to generate the DLL files.


LINKING TO MPFR and GMP DLL
---------------------------

There are two ways of linking to a DLL. The first way is to use 
one or more of the DLL export libraries built as described earlier
(note that these are not the same as static libraries although 
they are used in a similar way when an application is built).

If you intend to use the DLL export libraries in an application 
you need to:

   a. ensure that the application can locate the GMP and/or 
      the MPFR DLL in question when it is run.  This involves 
      putting the DLL(s) on a recognised directory path.
	
   b. define __GMP_LIBGMP_DLL when the application is built 
      in order to ensure that GMP symbols, which are DLL 
      export symbols, are properly recognised as such.


3. Using DLL Dynamic loading

The second way of linking to a DLL is to use dynamic loading.
This is more complex and will not be discussed here. The VC++
documentation describes how to use DLLs in this way.


Acknowledgements
----------------

My thanks to Brian for initiating this project and for 
providing so much help in developing the VC 6 builds from
his VC 7 project.

    Mike Loehr
