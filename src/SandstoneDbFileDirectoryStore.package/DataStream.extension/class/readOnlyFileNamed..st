*sandstonedbfiledirectorystore
readOnlyFileNamed: aString
	| strm |
	strm := self on: (FileStream readOnlyFileNamed: aString).
	strm byteStream setFileTypeToObject.
	^ strm