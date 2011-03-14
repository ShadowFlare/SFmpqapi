/* License information for this code is in license.txt */

#ifndef WINDOWS_H_INCLUDED
#define WINDOWS_H_INCLUDED

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdint.h>

#define LINUX_PORT

#ifdef __cplusplus
extern "C" {
#endif

// Function related defines
#define __cdecl
#define __stdcall
#define WINAPI __stdcall
#define APIENTRY __stdcall
#define __declspec(x)
#define __inline inline
#define __forceinline inline

#define CONST const

// Type defines
typedef uint8_t BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef int16_t SHORT;
typedef uint16_t USHORT;
typedef DWORD LCID;
typedef int32_t LONG;
typedef LONG * PLONG;
typedef int BOOL;
typedef void * LPVOID;
typedef CONST void *LPCVOID;
typedef char CHAR;
typedef char * LPSTR;
typedef const char * LPCSTR;
typedef DWORD * LPDWORD;
typedef BYTE * LPBYTE;
typedef LPVOID HANDLE;
typedef HANDLE HINSTANCE;

// Structs
typedef struct _OVERLAPPED {
	DWORD  Internal;
	DWORD  InternalHigh;
	DWORD  Offset;
	DWORD  OffsetHigh;
	HANDLE hEvent;
} OVERLAPPED, *LPOVERLAPPED;
typedef struct _SECURITY_ATTRIBUTES {
	DWORD nLength;
	LPVOID lpSecurityDescriptor;
	BOOL bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

// Constants
#define FALSE 0
#define TRUE 1
#define MAX_PATH 260
#define INVALID_HANDLE_VALUE ((HANDLE)-1)
#define INVALID_FILE_SIZE ((DWORD)-1)
#define INVALID_SET_FILE_POINTER ((DWORD)-1)
#define DLL_PROCESS_ATTACH 1
#define DLL_THREAD_ATTACH  2
#define DLL_THREAD_DETACH  3
#define DLL_PROCESS_DETACH 0
#define PAGE_NOACCESS          0x01
#define PAGE_READONLY          0x02
#define PAGE_READWRITE         0x04
#define PAGE_WRITECOPY         0x08
#define PAGE_EXECUTE           0x10
#define PAGE_EXECUTE_READ      0x20
#define PAGE_EXECUTE_READWRITE 0x40
#define PAGE_EXECUTE_WRITECOPY 0x80
#define PAGE_GUARD            0x100
#define PAGE_NOCACHE          0x200
#define PAGE_WRITECOMBINE     0x400
#define MEM_COMMIT           0x1000
#define MEM_RESERVE          0x2000
#define MEM_DECOMMIT         0x4000
#define MEM_RELEASE          0x8000
#define MEM_FREE            0x10000
#define MEM_PRIVATE         0x20000
#define MEM_MAPPED          0x40000
#define MEM_RESET           0x80000
#define MEM_TOP_DOWN       0x100000
#define MEM_4MB_PAGES    0x80000000
#define DRIVE_UNKNOWN     0
#define DRIVE_NO_ROOT_DIR 1
#define DRIVE_REMOVABLE   2
#define DRIVE_FIXED       3
#define DRIVE_REMOTE      4
#define DRIVE_CDROM       5
#define DRIVE_RAMDISK     6
#define GENERIC_READ                     (0x80000000L)
#define GENERIC_WRITE                    (0x40000000L)
#define GENERIC_EXECUTE                  (0x20000000L)
#define GENERIC_ALL                      (0x10000000L)
#define FILE_SHARE_READ                 0x00000001
#define FILE_SHARE_WRITE                0x00000002
#define FILE_SHARE_DELETE               0x00000004
#define CREATE_NEW          1
#define CREATE_ALWAYS       2
#define OPEN_EXISTING       3
#define OPEN_ALWAYS         4
#define TRUNCATE_EXISTING   5
#define FILE_BEGIN           0
#define FILE_CURRENT         1
#define FILE_END             2
#define NO_ERROR 0L
#define ERROR_FILE_NOT_FOUND             2L
#define ERROR_ACCESS_DENIED              5L
#define ERROR_INVALID_PARAMETER          87L    // dderror
#define ERROR_ALREADY_EXISTS             183L
#define ERROR_FILE_INVALID               1006L
#define ERROR_UNKNOWN_PROPERTY           1608L

// Declarations for Windows API functions
void WINAPI SetLastError(DWORD dwLastError);
DWORD WINAPI GetLastError();
DWORD WINAPI GetCurrentDirectory(DWORD dwBufferLength, LPSTR lpBuffer);
DWORD WINAPI GetDriveType(LPCSTR lpRootPath);
HANDLE WINAPI CreateFile(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile);
BOOL WINAPI CloseHandle(HANDLE hObject);
DWORD WINAPI GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh);
DWORD WINAPI SetFilePointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod);
BOOL WINAPI SetEndOfFile(HANDLE hFile);
BOOL WINAPI ReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped);
BOOL WINAPI WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped);
BOOL WINAPI DeleteFile(LPCSTR lpFileName);

// Declarations for C runtime functions
char * strlwr(char *lpString);
char * strupr(char *lpString);
//char * strdup(const char *lpString);
#define stricmp strcasecmp
#define strnicmp strncasecmp
int memicmp(const char *lpString1, const char *lpString2, size_t dwSize);

// Other functions
void SlashToBackslash(char *lpPath);
void BackslashToSlash(char *lpPath);

#ifdef __cplusplus
};  // extern "C"
#endif

#endif

