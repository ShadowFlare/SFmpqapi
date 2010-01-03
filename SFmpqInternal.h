// License information for this code is in license.txt

#ifndef SFMPQ_INTERNAL_INCLUDED
#define SFMPQ_INTERNAL_INCLUDED

#include <windows.h>
#include "SFmpqapi.h"

struct MPQARCHIVE;
struct MPQFILE;

//Archive handles are typecasted to this struct internally to access
//this data.  This struct is based on Storm's internal struct for
//archive handles.
struct MPQARCHIVE {
	// Arranged according to priority with lowest priority first
	MPQARCHIVE * lpNextArc; //0// Pointer to the next MPQARCHIVE struct. Pointer to addresses of first and last archives if last archive
	MPQARCHIVE * lpPrevArc; //4// Pointer to the previous MPQARCHIVE struct. 0xEAFC5E23 if first archive
	char szFileName[260]; //8// Filename of the archive
	HANDLE hFile; //10C// The archive's file handle
	DWORD dwFlags1; //110// Some flags, bit 0 seems to be set when opening an archive from a hard drive if bit 1 in the flags for SFileOpenArchive is set, bit 1 (0 based) seems to be set when opening an archive from a CD
	DWORD dwPriority; //114// Priority of the archive set when calling SFileOpenArchive
	MPQFILE * lpLastReadFile; //118// Pointer to the last read file's MPQFILE struct. This is cleared when finished reading a block
	DWORD dwUnk; //11C// Seems to always be 0
	DWORD dwBlockSize; //120// Size of file blocks in bytes
	BYTE * lpLastReadBlock; //124// Pointer to the read buffer for archive. This is cleared when finished reading a block
	DWORD dwBufferSize; //128// Size of the read buffer for archive. This is cleared when finished reading a block
	UINT64 qwMPQStart; //12C// The starting offset of the archive
	UINT64 qwMPQEnd; //130// The ending offset of the archive
	MPQHEADER * lpMPQHeader; //134// Pointer to the archive header
	BLOCKTABLEENTRY * lpBlockTable; //138// Pointer to the start of the block table
	HASHTABLEENTRY * lpHashTable; //13C// Pointer to the start of the hash table
	UINT64 qwReadOffset; //140// Offset to the data for a file
	DWORD dwRefCount; //144// Count of references to this open archive.  This is incremented for each file opened from the archive, and decremented for each file closed
	// Extra struct members used by SFmpq
	MPQHEADER MpqHeader;
	DWORD dwFlags; //The only flags that should be changed are MOAU_MAINTAIN_LISTFILE and MOAU_MAINTAIN_ATTRIBUTES, changing any others can have unpredictable effects
	LPSTR lpFileName;
	DWORD dwExtraFlags;
	MPQHEADER_EX MpqHeader_Ex;
	DWORD dwHeaderSize;
	WORD * lpFileOffsetsHigh;
};

//Handles to files in the archive are typecasted to this struct
//internally to access this data.  This struct is based on
//Storm's internal struct for file handles.
struct MPQFILE {
	MPQFILE * lpNextFile; //0// Pointer to the next MPQFILE struct. Pointer to addresses of first and last files if last file
	MPQFILE * lpPrevFile; //4// Pointer to the previous MPQFILE struct. 0xEAFC5E13 if first file
	char szFileName[260]; //8// Filename of the file
	HANDLE hFile; //10C// Always INVALID_HANDLE_VALUE for files in MPQ archives. For files not in MPQ archives, this is the file handle for the file and the rest of this struct is filled with zeros except for dwRefCount
	MPQARCHIVE * lpParentArc; //110// Pointer to the MPQARCHIVE struct of the archive in which the file is contained
	BLOCKTABLEENTRY * lpBlockEntry; //114// Pointer to the file's block table entry
	DWORD dwCryptKey; //118// Decryption key for the file
	DWORD dwFilePointer; //11C// Position of file pointer in the file
	DWORD dwUnk; //120// Seems to always be 0
	DWORD dwBlockCount; //124// Number of blocks in file
	DWORD * lpdwBlockOffsets; //128// Offsets to blocks in file. There are 1 more of these than the number of blocks. The values for this are set after the first read
	DWORD dwReadStarted; //12C// Set to 1 after first read
	BOOL bStreaming; //130// 1 when streaming a WAVE
	BYTE * lpLastReadBlock; //134// Pointer to the read buffer for file. This starts at the position specified in the last SFileSetFilePointer call. This is cleared when SFileSetFilePointer is called or when finished reading the block
	DWORD dwBytesRead; //138// Total bytes read from the current block in the open file. This is cleared when SFileSetFilePointer is called or when finished reading the block
	DWORD dwBufferSize; //13C// Size of the read buffer for file. This is cleared when SFileSetFilePointer is called or when finished reading the block
	DWORD dwRefCount; //140// Count of references to this open file
	// Extra struct members used by SFmpq
	HASHTABLEENTRY *lpHashEntry;
	LPSTR lpFileName;
	WORD wFileOffsetHigh;
};

#endif // #ifndef SFMPQ_INTERNAL_INCLUDED
