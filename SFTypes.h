#ifndef SFTYPES_INCLUDED
#define SFTYPES_INCLUDED

typedef signed char    Int8;
typedef signed short   Int16;
typedef signed long    Int32;
typedef signed __int64 Int64;

typedef unsigned char    UInt8;
typedef unsigned short   UInt16;
typedef unsigned long    UInt32;
typedef unsigned __int64 UInt64;

union IntConv {
	Int8 i8[8];
	UInt8 ui8[8];
	Int16 i16[4];
	UInt16 ui16[4];
	Int32 i32[2];
	UInt32 ui32[2];
	Int64 i64;
	UInt64 ui64;
};

#endif // #ifndef SFTYPES_INCLUDED

