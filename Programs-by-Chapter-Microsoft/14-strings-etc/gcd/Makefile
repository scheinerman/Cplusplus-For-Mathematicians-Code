# My "universal" Makefile suitable for compiling C or C++ programs in
# which all the source and header files live in one directory. The
# assumption is that we have a whole bunch of source files with
# exactly one containing a main(); we want to compile everything into
# a single executable.
# ERS 2004-08-17

######################################
# Stuff you should and/or may change #
######################################

# Name of the program we're trying to build. This line should be edited:

PROGRAM = gcd

# Depending on whether this is a C or C++ project,
# UNCOMMENT EXACTLY ONE of the following lines:

COMPILER = $(CXX)	# for C++
# COMPILER = $(CC)	# for C

# Set any flags we want sent to the compiler
COMP_FLAGS = -O -Wall -pedantic -ansi

# Set any include directories we want during compilation:
INCLUDE = -I/Users/ers/Common/include

# Set any lib directories:
LOADLIBES = -L/Users/ers/Common/lib

# Set any libfoo.a libraries against which we wish to link:
LOADLIBS = -l ers

# Where do you want this program installed?
INSTALL_DIR = /Users/ers/Common/bin

# If you are building an archive, specify its name. If you enter
# "foo", the archive will be named libfoo.a
ARCHIVE_NAME = mylib

# After building an archive, where do you want it installed?
ARCHIVE_DIR = /Users/ers/Common/lib


##############################################################
# No user serviceable parts beyond this point. Do not touch! #
##############################################################


# Take appropriate compiler flags from COMP_FLAGS

CFLAGS = $(COMP_FLAGS)
CXXFLAGS = $(COMP_FLAGS)

# Identify the source files using the following assumptions: all C
# sources end in .c and all C++ sources end in .cc

C_SOURCE = $(wildcard *.c)
CC_SOURCE = $(wildcard *.cc)
SOURCES = $(C_SOURCE) $(CC_SOURCE)

# The object files are all the C and C++ source files, but with suffix
# changed to .o

OBJECTS = $(patsubst %.c,%.o,$(C_SOURCE)) $(patsubst %.cc,%.o,$(CC_SOURCE))

# Dependency files are all the C and C++ source files, but with suffix
# changed to .d

DEPS = $(patsubst %.o,%.d,$(OBJECTS))

# If building an archive, its full name starts with "lib" and ends
# with ".a"
ARCHIVE_FULL_NAME = lib$(ARCHIVE_NAME).a

#########
# RULES #
#########

# Main rule to create the program
$(PROGRAM) : $(OBJECTS) $(DEPS)
	$(COMPILER) $(OBJECTS) \
	-o $(PROGRAM) \
	$(LDFLAGS) $(LOADLIBES) $(LOADLIBS)

# Install the program in the INSTALL_DIR directory
.PHONY: install
install: $(PROGRAM)
	cp $(PROGRAM) $(INSTALL_DIR)

# Create an archive from the objects
.PHONY: archive
$(ARCHIVE_FULL_NAME): archive
archive: $(OBJECTS) $(DEPS)
	$(AR) rvs $(ARCHIVE_FULL_NAME) $(OBJECTS)
	ranlib $(ARCHIVE_FULL_NAME)

# Copy the archive to the appropriate directory
.PHONY: archive-install
archive-install: $(ARCHIVE_FULL_NAME)
	cp $(ARCHIVE_FULL_NAME) $(ARCHIVE_DIR)

# Rules for compiling sources into objects
%.o : %.c %.d
	$(CC) -c $(CFLAGS) $(INCLUDE) $<

%.o : %.cc %.d
	$(CXX) -c $(CFLAGS) $(INCLUDE) $<

# Rules to create dependency files from C and C++ sources
%.d : %.cc 
	$(CPP) $(INCLUDE) -M $< > $@	

%.d : %.c
	$(CPP) $(INCLUDE) -M $< > $@	

# Rules for creating the documentation
.PHONY: docs
.PHONY: html
docs:
	doxygen
html:	docs

# Cleaning removes .o and .d files, but not the compiled program
.PHONY:	clean
clean:
	rm -rf *.o *.d

.PHONY: very-clean
very-clean: 
	rm -rf *.o *.d $(PROGRAM) $(ARCHIVE_FULL_NAME) html

# Read in the .d files (if any)
-include *.d

.PHONY: help
help:
	@echo With this make file you can make the following:
	@echo $(PROGRAM) -- your program \(the default action\)
	@echo clean -- erase .o and .d files
	@echo very-clean -- also erase $(PROGRAM), $(ARCHIVE_FULL_NAME), html
	@echo install -- install your program named $(PROGRAM)
	@echo docs -- generate doxygen documents 
	@echo archive -- build an archive from the objects
	@echo archive-install -- install the archive in $(ARCHIVE_DIR)
