Attribute VB_Name = "WinError"
Option Explicit

' GetLastError and the constants for the values returned by it
' (only the ones known to be used by Storm or Lmpqapi are included)

Declare Function GetLastError Lib "Kernel32" () As Long

Public Const ERROR_SUCCESS           As Long = 0
Public Const NO_ERROR                As Long = 0
Public Const ERROR_FILE_NOT_FOUND    As Long = 2
Public Const ERROR_OUTOFMEMORY       As Long = 14
Public Const ERROR_INVALID_PARAMETER As Long = 87
Public Const ERROR_DISK_FULL         As Long = 112
Public Const ERROR_ALREADY_EXISTS    As Long = 183
Public Const ERROR_FILE_INVALID      As Long = 1006
Public Const ERROR_UNKNOWN_PROPERTY  As Long = 1608

