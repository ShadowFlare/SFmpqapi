# Microsoft Developer Studio Project File - Name="SFmpqlib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=SFmpqlib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "SFmpqlib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "SFmpqlib.mak" CFG="SFmpqlib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SFmpqlib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "SFmpqlib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "SFmpqlib___Win32_Release"
# PROP BASE Intermediate_Dir "SFmpqlib___Win32_Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "SFmpqlib___Win32_Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_LIB" /D "SFMPQ_STATIC" /D "ZLIB_DLL" /D "BZ_NO_STDIO" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Release\SFmpq_static.lib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "SFmpqlib___Win32_Debug"
# PROP BASE Intermediate_Dir "SFmpqlib___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "SFmpqlib___Win32_Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_LIB" /D "SFMPQ_STATIC" /D "ZLIB_DLL" /D "BZ_NO_STDIO" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"Debug\SFmpq_static.lib"

!ENDIF 

# Begin Target

# Name "SFmpqlib - Win32 Release"
# Name "SFmpqlib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\SFmpq_static.cpp
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\SFmpq_static.h
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.h
# End Source File
# End Group
# Begin Group "SComp"

# PROP Default_Filter ""
# Begin Group "Base"

# PROP Default_Filter ""
# Begin Group "Source Files (Base)"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\SComp\explode.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\huffman.cpp

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\implode.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SComp.cpp

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SErr.cpp

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SMem.cpp

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\wave.cpp

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files (Base)"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\SComp\Huffman.h
# End Source File
# Begin Source File

SOURCE=..\SComp\pklib.h
# End Source File
# Begin Source File

SOURCE=..\SComp\SComp.h
# End Source File
# Begin Source File

SOURCE=..\SComp\SErr.h
# End Source File
# Begin Source File

SOURCE=..\SComp\SMem.h
# End Source File
# Begin Source File

SOURCE=..\SComp\wave.h
# End Source File
# End Group
# End Group
# Begin Group "bzip2"

# PROP Default_Filter ""
# Begin Group "Source Files (bzip2)"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\SComp\bzip2\blocksort.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\bzlib.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\compress.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\crctable.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\decompress.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\huffman.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\randtable.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/bzip2"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files (bzip2)"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\SComp\bzip2\bzlib.h
# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\bzlib_private.h
# End Source File
# End Group
# End Group
# Begin Group "zlib"

# PROP Default_Filter ""
# Begin Group "Source Files (zlib)"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\SComp\zlib\adler32.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\compress.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\crc32.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\deflate.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inffast.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inflate.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inftrees.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\trees.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\uncompr.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\zutil.c

!IF  "$(CFG)" == "SFmpqlib - Win32 Release"

# PROP Intermediate_Dir "SFmpqlib___Win32_Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqlib - Win32 Debug"

# PROP Intermediate_Dir "SFmpqlib___Win32_Debug/SComp/zlib"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files (zlib)"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\SComp\zlib\zconf.h
# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\zlib.h
# End Source File
# End Group
# End Group
# End Group
# End Target
# End Project
