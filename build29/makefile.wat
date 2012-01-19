# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.9 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C++ compiler 
CXX = wpp386

# Standard flags for C++ 
CXXFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Use DLL build of wx library? [0,1]
#   0 - Static
#   1 - DLL
WX_SHARED = 0

# Use debug build of wxWidgets (linked with debug CRT)? [0,1]
#   0 - Release
#   1 - Debug
WX_DEBUG = 1

# Version of the wx library to build against. 
WX_VERSION = 29

# The directory where wxWidgets library is installed 
WX_DIR = $(%WXWIN)

# Build this wxCode component as DLL or as static library? [0,1]
#   0 - Static
#   1 - DLL
SHARED = 0

# If 1 then the SQLite library will be loaded dynamically at run time [1,0]
USE_DYNAMIC_SQLITE3_LOAD = 0

# If 1 then the SQLite library has to be compiled with meta data support [1,0]
HAVE_METADATA = 0

# If 1 then the SQLite library has to be compiled with codec support [1,0]
HAVE_CODEC = 0

# If 1 then the SQLite library has to be compiled with loadable extension support [1,0]
HAVE_LOAD_EXTENSION = 0

# Folder where the SQLite3 link library is located 
SQLITE3_DIR = ..\sqlite3



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
! if $(__VERSION__) >= 1280
!  loaddll wlink    wlinkd
! else
!  loaddll wlink    wlink
! endif
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

WX3RDPARTYLIBPOSTFIX =
!ifeq WX_DEBUG 1
WX3RDPARTYLIBPOSTFIX = d
!endif
_BUILDDIR_SHARED_SUFFIX =
!ifeq SHARED 0
_BUILDDIR_SHARED_SUFFIX = 
!endif
!ifeq SHARED 1
_BUILDDIR_SHARED_SUFFIX = _dll
!endif
__wxsqlite3_lib___depname =
!ifeq SHARED 0
__wxsqlite3_lib___depname = &
	..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib
!endif
__wxsqlite3_dll___depname =
!ifeq SHARED 1
__wxsqlite3_dll___depname = &
	..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.dll
!endif
__COMPONENT_LIB_DEP =
!ifeq SHARED 0
__COMPONENT_LIB_DEP = $(__wxsqlite3_lib___depname)
!endif
!ifeq SHARED 1
__COMPONENT_LIB_DEP = $(__wxsqlite3_dll___depname)
!endif
__COMPONENT_LIB_LIBR =
!ifeq SHARED 0
__COMPONENT_LIB_LIBR = &
	..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib
!endif
!ifeq SHARED 1
__COMPONENT_LIB_LIBR = &
	..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib
!endif
____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES =
!ifeq SHARED 0
____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES = lib
!endif
!ifeq SHARED 1
____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES = dll
!endif
__SQLITE3_DYNAMICLOAD_DEF_p =
!ifeq USE_DYNAMIC_SQLITE3_LOAD 0
__SQLITE3_DYNAMICLOAD_DEF_p = -dwxUSE_DYNAMIC_SQLITE3_LOAD=0
!endif
!ifeq USE_DYNAMIC_SQLITE3_LOAD 1
__SQLITE3_DYNAMICLOAD_DEF_p = -dwxUSE_DYNAMIC_SQLITE3_LOAD=1
!endif
__SQLITE3_HAVE_METADATA_DEF_p =
!ifeq HAVE_METADATA 0
__SQLITE3_HAVE_METADATA_DEF_p = -dWXSQLITE3_HAVE_METADATA=0
!endif
!ifeq HAVE_METADATA 1
__SQLITE3_HAVE_METADATA_DEF_p = -dWXSQLITE3_HAVE_METADATA=1
!endif
__SQLITE3_HAVE_CODEC_DEF_p =
!ifeq HAVE_CODEC 0
__SQLITE3_HAVE_CODEC_DEF_p = -dWXSQLITE3_HAVE_CODEC=0
!endif
!ifeq HAVE_CODEC 1
__SQLITE3_HAVE_CODEC_DEF_p = -dWXSQLITE3_HAVE_CODEC=1
!endif
__SQLITE3_HAVE_LOAD_EXTENSION_DEF_p =
!ifeq HAVE_LOAD_EXTENSION 0
__SQLITE3_HAVE_LOAD_EXTENSION_DEF_p = -dWXSQLITE3_HAVE_LOAD_EXTENSION=0
!endif
!ifeq HAVE_LOAD_EXTENSION 1
__SQLITE3_HAVE_LOAD_EXTENSION_DEF_p = -dWXSQLITE3_HAVE_LOAD_EXTENSION=1
!endif
VAR =
!ifeq WX_DEBUG 0
VAR = -ot -ox
!endif
!ifeq WX_DEBUG 1
VAR = -od
!endif
VAR_0 =
!ifeq WX_DEBUG 0
VAR_0 = -d0
!endif
!ifeq WX_DEBUG 1
VAR_0 = -d2
!endif
VAR_1 =
!ifeq WX_DEBUG 0
VAR_1 = 
!endif
!ifeq WX_DEBUG 1
VAR_1 = debug all
!endif
____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES =
!ifeq WX_SHARED 0
____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES = lib
!endif
!ifeq WX_SHARED 1
____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES = dll
!endif
__SQLITE3_DEP_p =
!ifeq USE_DYNAMIC_SQLITE3_LOAD 0
__SQLITE3_DEP_p = sqlite3.lib
!endif
____WX_SHARED =
!ifeq WX_SHARED 0
____WX_SHARED = 
!endif
!ifeq WX_SHARED 1
____WX_SHARED = -dWXUSINGDLL
!endif
__WXDEBUG_DEFINE_p =
!ifeq WX_DEBUG 1
__WXDEBUG_DEFINE_p = -d__WXDEBUG__
!endif
WXLIBPOSTFIX =
!ifeq WX_DEBUG 0
WXLIBPOSTFIX = u
!endif
!ifeq WX_DEBUG 1
WXLIBPOSTFIX = ud
!endif
WXLIBPATH =
!ifeq WX_SHARED 0
WXLIBPATH = \lib\$(COMPILER_PREFIX)_lib
!endif
!ifeq WX_SHARED 1
WXLIBPATH = \lib\$(COMPILER_PREFIX)_dll
!endif

### Variables: ###

COMPILER_PREFIX = wat
WXSQLITE3_LIB_CXXFLAGS = $(____WX_SHARED) -d_UNICODE $(__WXDEBUG_DEFINE_p) &
	-d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) &
	-i=$(WX_DIR)\include $(VAR) $(VAR_0) -wx -i=..\include &
	$(__SQLITE3_DYNAMICLOAD_DEF_p) $(__SQLITE3_HAVE_METADATA_DEF_p) &
	$(__SQLITE3_HAVE_CODEC_DEF_p) $(__SQLITE3_HAVE_LOAD_EXTENSION_DEF_p) &
	-i=$(SQLITE3_DIR)\include $(CPPFLAGS) $(CXXFLAGS)
WXSQLITE3_LIB_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_lib_wxsqlite3.obj
WXSQLITE3_DLL_CXXFLAGS = -bd $(____WX_SHARED) -d_UNICODE $(__WXDEBUG_DEFINE_p) &
	-d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) &
	-i=$(WX_DIR)\include $(VAR) $(VAR_0) -wx -i=..\include &
	-dWXMAKINGDLL_WXSQLITE3 $(__SQLITE3_DYNAMICLOAD_DEF_p) &
	$(__SQLITE3_HAVE_METADATA_DEF_p) $(__SQLITE3_HAVE_CODEC_DEF_p) &
	$(__SQLITE3_HAVE_LOAD_EXTENSION_DEF_p) -i=$(SQLITE3_DIR)\include &
	$(CPPFLAGS) $(CXXFLAGS)
WXSQLITE3_DLL_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll_wxsqlite3.obj
MINIMAL_CXXFLAGS = $(____WX_SHARED) -d_UNICODE $(__WXDEBUG_DEFINE_p) &
	-d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) &
	-i=$(WX_DIR)\include $(VAR) $(VAR_0) -wx -i=..\include -i=..\samples &
	-i=$(SQLITE3_DIR)\include $(CPPFLAGS) $(CXXFLAGS)
MINIMAL_OBJECTS =  &
	watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal_minimal.obj


all : watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)
watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) :
	-if not exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) mkdir watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)

### Targets: ###

all : .SYMBOLIC test_for_selected_wxbuild $(__wxsqlite3_lib___depname) $(__wxsqlite3_dll___depname) ..\samples\minimal.exe

clean : .SYMBOLIC 
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch
	-if exist ..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib del ..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib
	-if exist ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.dll del ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.dll
	-if exist ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib del ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib
	-if exist ..\samples\minimal.exe del ..\samples\minimal.exe

test_for_selected_wxbuild :  
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo The selected wxWidgets build is not available!
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo Please use the options prefixed with WX_ to select another wxWidgets build.
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	exit 1

!ifeq SHARED 0
..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib :  make_dir_wxsqlite3_lib  $(WXSQLITE3_LIB_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_lib.lbc
	@for %i in ($(WXSQLITE3_LIB_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_lib.lbc +%i
	wlib -q -p4096 -n -b $^@ @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_lib.lbc
!endif

make_dir_wxsqlite3_lib :  
	if not exist ..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES) mkdir ..\lib\wat_$(____wxsqlite3_lib__DIRNAME_SHARED_SUFFIX_FILENAMES)

!ifeq SHARED 1
..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.dll :  make_dir_wxsqlite3_dll  $(WXSQLITE3_DLL_OBJECTS)
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc  libpath $(WX_DIR)$(WXLIBPATH) $(VAR_1) libpath ..$(WXLIBPATH) libpath $(SQLITE3_DIR)\lib $(LDFLAGS)
	@for %i in ($(WXSQLITE3_DLL_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc file %i
	@for %i in ( $(__SQLITE3_DEP_p) wxbase$(WX_VERSION)$(WXLIBPOSTFIX).lib wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc system nt_dll
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll.lbc
	wlib -q -n -b ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)\wxcode_msw$(WX_VERSION)$(WXLIBPOSTFIX)_wxsqlite3.lib +$^@
!endif

make_dir_wxsqlite3_dll :  
	if not exist ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES) mkdir ..\lib\$(COMPILER_PREFIX)_$(____wxsqlite3_dll__DIRNAME_SHARED_SUFFIX_FILENAMES)

..\samples\minimal.exe :  $(MINIMAL_OBJECTS) $(__COMPONENT_LIB_DEP) watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal_minimal.res
	@%create watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc option quiet
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc name $^@
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc option caseexact
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc  libpath $(WX_DIR)$(WXLIBPATH) $(VAR_1) libpath ..$(WXLIBPATH) system nt ref 'main_' libpath $(SQLITE3_DIR)\lib $(LDFLAGS)
	@for %i in ($(MINIMAL_OBJECTS)) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc file %i
	@for %i in ( $(__COMPONENT_LIB_LIBR) $(__SQLITE3_DEP_p) wxbase$(WX_VERSION)$(WXLIBPOSTFIX).lib wxtiff$(WX3RDPARTYLIBPOSTFIX).lib wxjpeg$(WX3RDPARTYLIBPOSTFIX).lib wxpng$(WX3RDPARTYLIBPOSTFIX).lib wxzlib$(WX3RDPARTYLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTYLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib) do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc library %i
	@%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc option resource=watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal_minimal.res
	@for %i in () do @%append watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc option stack=%i
	wlink @watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal.lbc

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_lib_wxsqlite3.obj :  .AUTODEPEND ..\src\wxsqlite3.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(WXSQLITE3_LIB_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\wxsqlite3_dll_wxsqlite3.obj :  .AUTODEPEND ..\src\wxsqlite3.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(WXSQLITE3_DLL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal_minimal.obj :  .AUTODEPEND ..\samples\minimal.cpp
	$(CXX) -bt=nt -zq -fo=$^@ $(MINIMAL_CXXFLAGS) $<

watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\minimal_minimal.res :  .AUTODEPEND ..\samples\minimal.rc
	wrc -q -ad -bt=nt -r -fo=$^@  $(____WX_SHARED) -d_UNICODE $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\include -i=..\samples -i=$(SQLITE3_DIR)\include $<

