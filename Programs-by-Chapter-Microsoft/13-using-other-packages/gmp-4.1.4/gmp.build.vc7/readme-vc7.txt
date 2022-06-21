
Compiling GMP and MPFR with the VC++ 7.1 IDE
--------------------------------------------

First obtain the GMP and MPFR distributions, named gmp-<ver> and
mpfr-<ver> where <ver> are the versions being used.  Unzip the
gmp-<ver> files in the ZIP archive into a directory tree with the 
gmp-<ver> directory as its root.  Unzip the MPFR files so that 
the root mpfr-<ver> directory is within the gmp-<ver> directory. 
That is, the directories mpfr and mpfr-<ver> are at the same level 
in the directory tree. Then delete the mpfr directory and rename
the directory mpfr-<ver> to mpfr.

Unzip the additional files in this distribution so that they are
merged into the above directory tree (i.e so that the vc_build 
directory is within the gmp-<ver> directory).

If you wish to use the assembler files you will also need the NASM
open source x86 assembler for Windows.  This assembler should be 
placed in the bin directory used by VC++, typically for VC7.1:

C:\Program Files\Microsoft Visual Studio .NET 2003\Vc7\bin

If the NASM executable has the name nasmw.exe, you will either 
need to rename it to nasm.exe or change the command line in the 
custom build step for all assembler files to refer to nasmw.exe 
instead of nasm.exe. 

STATIC LIBRARIES
----------------

All the static libraries are placed in the lib directory within 
the vc_build directory.  

There are four subsidiary library projects:

lib_mpn_gc - builds mpn.lib using the large integer code in C
lib_mpn_p0 - builds mpn.lib using C and pentium optimised assembler
lib_mpn_p3 - builds mpn.lib using C and P3 optimised assembler
lib_mpn_p4 - builds mpn.lib using C and P4 optimised assembler

Before each of these is built the IDE uses a pre-build step to copy
the appropriate GMP configuation into config.h.  After each is built 
a post build step is used to copy the resulting to mpn.lib into the 
lib folder for use in building gmp.lib and gmpxx.lib.  Hence the GMP 
and GMPXX builds will always use the last subsidiary library that is 
built. If necessary this behaviour can be changed by manually copying 
the appropriate configuration file to config.h and adding the related 
subsidiary library to the projects in place of mpn.lib.

Hence to build the lib_gmp release version library, first build the 
appropriate subsidiary library and then build the lib_gmp project.  
After lib_gmp has been built you can then build the lib_gmpxx and 
mpfr static libraries. The debug version of these libraries are built 
in the same way and give libraries with the same names. These library 
builds all provide multi-threaded code but this can be changed in each 
of the IDE projects if a single threaded GMP/MPFR based application is 
needed.  It is important to remember that the lib subdirectory will 
always contain the last library built so once debugging is complete it 
will often be necessary to do a final release build.

The MPFR static library build assumes that this is intended to 
work with the lib_gmp or lib_gmpxx static libraries. 

DLL BUILDS
----------

The GMP DLL projects include the C++ files. If you do not want
these then, for the DLL(s) you want to build, go to the 'cpp'
subdirectory of their build project in the IDE and exclude all 
the files in this subdirectory from the build process.

There are four DLL build projects as follows:

dll_gmp_gc - gmp.dll using the large integer code all in C 
dll_gmp_p0 - gmp.dll using the C and Intel pentium assembler 
dll_gmp_p3 - gmp.dll using the C and Intel P3 assembler
dll_gmp_p4 - gmp.dll using the C and Intel P4 assembler

Before these are built the appropriate GMP configuration file 
is copied into config.h.  After each DLL is built, the resulting 
DLL, its export libraries and its debug symbol file are copied 
into the files gmp.dll, gmp.exp, gmp.lib and gmp.pdb for use in 
building MPFR.  All These DLLs are multi-threaded and are 
statically linked to the Microsoft run-time libraries. The 
project build properties need to be changed if the DLL versions 
of the Microsoft run time libraries are to be used. 

If more than one gmp DLL is built, please remember that when the 
MPFR DLL is built it will be linked to the last gmp DLL that is 
built. Alternatively you can edit the MPFR linker property page 
to link to a specific export library. The debug versions of 
these DLLs and libraries are built in the same way.

DLLs and the associated export libraries are placed in the dll
directory within the vc_build directory. 

Using GMP and MPFR
------------------

Many applications that rely on GMP and MPFR also include the gmp.h 
and mpfr.h header files but it is impossible to be certain that 
these will match the versions of GMP and MPFR that are built by
this distribution. Hence when this distribution is being used 
with a GMP based application it is important to ensure that any 
GMP and MPFR header files used by such an application are those 
that are supplied here and not those that might have been supplied 
with the application itself.  This will often be only gmp.h and
mpfr.h but some other header files may also be involved.

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

1. Using the Static Libraries

To build a GMP C or C++ based application using the the static 
libraries all that needs to be done is to add the GMP or GMPXX
static libraries to the application build process.  To build an
MPFR based application add the MPFR library and the GMP or GMPXX
library as appropriate.

It is, of course, important to ensure that any libraries that are
used have been built for the target platform.

2. Using the DLL Export Libraries

There are two ways of linking to a DLL. The first way is to use 
one or more of the DLL export libraries built as described earlier
(note that these are not the same as static libraries although 
they are used in a similar way when an application is built).

If you intend to use the DLL export libraries in an application 
you need to:

   a. ensure that the application can locate the GMP and/or 
      the MPFR DLL in question when it is run.  This involves 
      putting the DLL(s) on a recognised directory path.
	
   b. define __GMP_LIBGMP_DLL and/or __MPFR_LIBGMP_DLL when 
      the application is built in order to ensure that GMP 
      and/or MPFR symbols, which are DLL export symbols, are 
      properly recognised as such.

3. Using DLL Dynamic loading

The second way of linking to a DLL is to use dynamic loading.
This is more complex and will not be discussed here. The VC++
documentation describes how to use DLLs in this way.  

Acknowledgements
----------------

My thanks to:

1. Sam Krasnik and Mike Loehr for suggestions on how to improve 
   and correct errors in earlier releases.
2. Mike Loehr for building and maintaining the VC6 build files 
   distributed here.
3. Patrick Pelissier and Vincent Lefèvre for helping to resolve 
   VC++ issues in MPFR.

    Brian Gladman
