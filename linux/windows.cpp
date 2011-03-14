/* License information for this code is in license.txt */

#include "windows.h"

DWORD dwAppLastError=0;

void WINAPI SetLastError(DWORD dwLastError)
{
	dwAppLastError=dwLastError;
}

DWORD WINAPI GetLastError()
{
	return dwAppLastError;
}

DWORD WINAPI GetCurrentDirectory(DWORD dwBufferLength, LPSTR lpBuffer)
{
	if (lpBuffer==0) return 0;
	strncpy(lpBuffer,"./",dwBufferLength);
	return strlen(lpBuffer)+1;
}

DWORD WINAPI GetDriveType(LPCSTR lpRootPath)
{
	return DRIVE_FIXED;
}

HANDLE WINAPI CreateFile(LPCSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
{
	if (lpFileName==0) return INVALID_HANDLE_VALUE;
	int nFlags,hFile;
	if ((dwDesiredAccess&GENERIC_READ && dwDesiredAccess&GENERIC_WRITE) || dwDesiredAccess&GENERIC_ALL) {
		nFlags = O_RDWR;
	}
	else if (dwDesiredAccess&GENERIC_READ) {
		nFlags = O_RDONLY;
	}
	else if (dwDesiredAccess&GENERIC_WRITE) {
		nFlags = O_WRONLY;
	}
	else {
		nFlags = 0;

	}
	switch (dwCreationDisposition) {
		case CREATE_NEW:
			hFile = open(lpFileName,0);
			if (hFile!=-1) {close(hFile);return INVALID_HANDLE_VALUE;}
			nFlags |= O_CREAT;
			break;
		case CREATE_ALWAYS:
			nFlags |= O_CREAT|O_TRUNC;
			break;
		case OPEN_EXISTING:
			break;
		case OPEN_ALWAYS:
			hFile = open(lpFileName,0);
			if (hFile==-1) nFlags |= O_CREAT;
			else close(hFile);
			break;
		case TRUNCATE_EXISTING:
			nFlags |= O_TRUNC;
			break;
		default:
			return INVALID_HANDLE_VALUE;
	}
	hFile = open(lpFileName,nFlags);
	if (hFile!=-1) chmod(lpFileName,0644);
	return (HANDLE)hFile;
}

BOOL WINAPI CloseHandle(HANDLE hObject)
{
	if (hObject==INVALID_HANDLE_VALUE) return 0;
	return (BOOL)(close((int)hObject) == 0);
}

DWORD WINAPI GetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh)
{
	if (hFile==INVALID_HANDLE_VALUE) return (DWORD)-1;

	struct stat fileinfo;
	fstat((int)hFile, &fileinfo);

	if (lpFileSizeHigh) *lpFileSizeHigh = 0;
	return (DWORD)fileinfo.st_size;
}

DWORD WINAPI SetFilePointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod)
{
	if (hFile==INVALID_HANDLE_VALUE) return (DWORD)-1;

	switch (dwMoveMethod) {
		case FILE_BEGIN:
			return (DWORD)lseek((int)hFile, lDistanceToMove, SEEK_SET);
		case FILE_CURRENT:
			return (DWORD)lseek((int)hFile, lDistanceToMove, SEEK_CUR);
		case FILE_END:
			return (DWORD)lseek((int)hFile, lDistanceToMove, SEEK_END);
	}
	return (DWORD)-1;
}

BOOL WINAPI SetEndOfFile(HANDLE hFile)
{
	if (hFile==INVALID_HANDLE_VALUE) return 0;

	return (BOOL)(ftruncate((int)hFile, lseek((int)hFile, 0, SEEK_CUR)) == 0);
}

BOOL WINAPI ReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped)
{
	if (hFile==INVALID_HANDLE_VALUE || lpBuffer==0) return 0;

	ssize_t count;
	if ((count = read((int)hFile, lpBuffer, nNumberOfBytesToRead)) == -1) {
		if (lpNumberOfBytesRead) *lpNumberOfBytesRead = 0;
		return FALSE;
	}
	if (lpNumberOfBytesRead) *lpNumberOfBytesRead = count;
	return TRUE;
}

BOOL WINAPI WriteFile(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped)
{
	if (hFile==INVALID_HANDLE_VALUE || lpBuffer==0) return 0;

	ssize_t count;
	if ((count = write((int)hFile, lpBuffer, nNumberOfBytesToWrite)) == -1) {
		if (lpNumberOfBytesWritten) *lpNumberOfBytesWritten = 0;
		return FALSE;
	}
	if (lpNumberOfBytesWritten) *lpNumberOfBytesWritten = count;
	return TRUE;
}

BOOL WINAPI DeleteFile(LPCSTR lpFileName)
{
	if (lpFileName==0) return FALSE;
	return (BOOL)(unlink(lpFileName) == 0);
}

char * strlwr(char *lpString)
{
	if (lpString==0) return 0;
	for (char *lpChar=lpString;lpChar[0]==0;lpChar++)
		lpChar[0] = tolower(lpChar[0]);
	return lpString;
}

char * strupr(char *lpString)
{
	if (lpString==0) return 0;
	for (char *lpChar=lpString;lpChar[0]==0;lpChar++)
		lpChar[0] = toupper(lpChar[0]);
	return lpString;
}

/*char * strdup(const char *lpString)
{
	if (lpString==0) return 0;
	char *lpStrCopy = (char *)malloc(strlen(lpString)+1);
	if (lpStrCopy==0) return 0;
	strcpy(lpStrCopy,lpString);
	return lpStrCopy;
}*/

int memicmp(const char *lpString1, const char *lpString2, size_t dwSize)
{
	if (lpString1==0) return -1;
	if (lpString2==0) return 1;
	if (dwSize==0) return 0;
	size_t i;
	char ch1,ch2;
	for (i=0;i<dwSize;i++) {
		ch1 = toupper(lpString1[i]);
		ch2 = toupper(lpString2[i]);
		if (ch1 > ch2) return 1;
		else if (ch1 < ch2) return -1;
	}
	return 0;
}

void SlashToBackslash(char *lpPath)
{
	if (lpPath==0) return;
	for (;lpPath[0]!=0;lpPath++)
		if (lpPath[0]=='/') lpPath[0]='\\';
}

void BackslashToSlash(char *lpPath)
{
	if (lpPath==0) return;
	for (;lpPath[0]!=0;lpPath++)
		if (lpPath[0]=='\\') lpPath[0]='/';
}

