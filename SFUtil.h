// License information for this code is in license.txt

#ifndef SFUTIL_INCLUDED
#define SFUTIL_INCLUDED

#include <windows.h>
#include "SFTypes.h"

LPVOID WINAPI SFAlloc(DWORD dwSize);
void WINAPI SFFree(LPVOID lpvMemory);
void WINAPI SFMemZero(LPVOID lpvDestination, DWORD dwLength);
UInt64 SFGetFileSize(HANDLE hFile);
UInt64 SFSetFilePointer(HANDLE hFile, Int64 nDistance, UInt32 dwMoveMethod);
size_t strlnlen(const char *strline);
char *nextline(const char *strline);

#endif // #ifndef SFUTIL_INCLUDED

