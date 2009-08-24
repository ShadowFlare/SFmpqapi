# Microsoft Developer Studio Project File - Name="SFmpqapi" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=SFmpqapi - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "SFmpqapi.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "SFmpqapi.mak" CFG="SFmpqapi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SFmpqapi - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "SFmpqapi - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "SFmpqapi - Win32 Beta release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

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
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /Ob2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /D "ZLIB_DLL" /D "BZ_NO_STDIO" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386 /out:"Release/SFmpq.dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

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
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /D "ZLIB_DLL" /D "BZ_NO_STDIO" /FD /GZ /c
# SUBTRACT CPP /Fr /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /out:"Debug/SFmpq.dll" /pdbtype:sept

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "SFmpqapi___Win32_Beta_release"
# PROP BASE Intermediate_Dir "SFmpqapi___Win32_Beta_release"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /Ob2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SFMPQAPI_EXPORTS" /D "ZLIB_DLL" /D "BZ_NO_STDIO" /D "BETA" /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG" /d "BETA"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386 /out:"Release/SFmpq.dll"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386 /out:"Release/SFmpq.dll"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "SFmpqapi - Win32 Release"
# Name "SFmpqapi - Win32 Debug"
# Name "SFmpqapi - Win32 Beta release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\SFmpqapi.cpp
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.def
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.odl
# End Source File
# Begin Source File

SOURCE=.\SFmpqapi.rc
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\SFmpqapi.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\about
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

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\huffman.cpp

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\implode.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SComp.cpp

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SErr.cpp

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\SMem.cpp

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\wave.cpp

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp"

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

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\bzlib.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\compress.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\crctable.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\decompress.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\huffman.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\bzip2\randtable.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/bzip2"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/bzip2"

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

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\compress.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\crc32.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\deflate.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inffast.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inflate.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\inftrees.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\trees.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\uncompr.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\SComp\zlib\zutil.c

!IF  "$(CFG)" == "SFmpqapi - Win32 Release"

# PROP Intermediate_Dir "Release/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Debug"

# PROP Intermediate_Dir "Debug/SComp/zlib"

!ELSEIF  "$(CFG)" == "SFmpqapi - Win32 Beta release"

# PROP Intermediate_Dir "Release/SComp/zlib"

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
