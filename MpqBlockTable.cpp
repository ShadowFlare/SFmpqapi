// License information for this code is in license.txt

#include <windows.h>
#include "SFmpqapi.h"
#include "SFmpqInternal.h"
#include "SFUtil.h"
#include "MpqCrypt.h"

BOOL WriteBlockTable(MPQARCHIVE *mpqOpenArc)
{
	DWORD tsz;
	BOOL bReturnVal = FALSE;

	if (mpqOpenArc->MpqHeader.dwBlockTableSize == 0) return TRUE;
	if (!mpqOpenArc->lpBlockTable) return FALSE;

	char *buffer = (char *)SFAlloc(sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize);
	if (buffer) {
		memcpy(buffer,mpqOpenArc->lpBlockTable,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize);
		EncryptData((LPBYTE)buffer,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize,dwBlockTableKey);
		SFSetFilePointer(mpqOpenArc->hFile, mpqOpenArc->qwMPQStart + MakeUInt64(mpqOpenArc->MpqHeader.dwBlockTableOffset, mpqOpenArc->MpqHeader_Ex.wBlockTableOffsetHigh), FILE_BEGIN);
		bReturnVal = WriteFile(mpqOpenArc->hFile,buffer,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize,&tsz,0);
		SFFree(buffer);
	}
	else {
		EncryptData((LPBYTE)mpqOpenArc->lpBlockTable,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize,dwBlockTableKey);
		SFSetFilePointer(mpqOpenArc->hFile, mpqOpenArc->qwMPQStart + MakeUInt64(mpqOpenArc->MpqHeader.dwBlockTableOffset, mpqOpenArc->MpqHeader_Ex.wBlockTableOffsetHigh), FILE_BEGIN);
		bReturnVal = WriteFile(mpqOpenArc->hFile,mpqOpenArc->lpBlockTable,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize,&tsz,0);
		DecryptData((LPBYTE)mpqOpenArc->lpBlockTable,sizeof(BLOCKTABLEENTRY) * mpqOpenArc->MpqHeader.dwBlockTableSize,dwBlockTableKey);
	}

	if (bReturnVal && mpqOpenArc->MpqHeader_Ex.qwExtendedBlockOffsetTable) {
		SFSetFilePointer(mpqOpenArc->hFile, mpqOpenArc->qwMPQStart + mpqOpenArc->MpqHeader_Ex.qwExtendedBlockOffsetTable, FILE_BEGIN);
		bReturnVal = WriteFile(mpqOpenArc->hFile, mpqOpenArc->lpFileOffsetsHigh, sizeof(UInt16) * mpqOpenArc->MpqHeader.dwBlockTableSize, &tsz, 0);
	}

	return bReturnVal;
}
