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
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_LIB" /D "SFMPQ_STATIC" /D "ZLIB_DLL" /YX /FD /c
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
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_LIB" /D "SFMPQ_STATIC" /D "ZLIB_DLL" /YX /FD /GZ /c
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

SOURCE=..\SComp\explode.c
# End Source File
# Begin Source File

SOURCE=..\SComp\huffman.cpp
# End Source File
# Begin Source File

SOURCE=..\SComp\implode.c
# End Source File
# Begin Source File

SOURCE=..\SComp\SComp.cpp
# End Source File
# Begin Source File

SOURCE=..\SComp\SErr.cpp
# End Source File
# Begin Source File

SOURCE=.\SFmpq_static.cpp
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.cpp
# End Source File
# Begin Source File

SOURCE=..\SComp\SMem.cpp
# End Source File
# Begin Source File

SOURCE=..\SComp\wave.cpp
# End Source File
# End Group
# Begin Group "Header Files"

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

SOURCE=.\SFmpq_static.h
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.h
# End Source File
# Begin Source File

SOURCE=..\SComp\SMem.h
# End Source File
# Begin Source File

SOURCE=..\SComp\wave.h
# End Source File
# End Group
# Begin Source File

SOURCE=..\SComp\ZLib_Static_min.lib
# End Source File
# End Target
# End Project
