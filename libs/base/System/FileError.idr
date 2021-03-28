module System.FileError

public export
data FileError = GenericFileError Int -- errno
               | FileReadError
               | FileWriteError
               | FileNotFound
               | PermissionDenied
               | FileExists
               | DirectoryIsNotFile

export
Show FileError where
  show (GenericFileError errno) = "File error: " ++ show errno
  show FileReadError = "File Read Error"
  show FileWriteError = "File Write Error"
  show FileNotFound = "File Not Found"
  show PermissionDenied = "Permission Denied"
  show FileExists = "File Exists"
  show DirectoryIsNotFile = "Directory Is Not File"
