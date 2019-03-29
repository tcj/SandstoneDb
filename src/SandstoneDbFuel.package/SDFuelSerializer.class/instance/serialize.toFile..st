actions
serialize: anObject toFile: aFile
	| serializer |
	StandardFileStream
		newFileNamed: aFile
		do: [ :f | 
			f binary.
			serializer := FLSerializer on: f.
			serializer serialize: anObject.
			f flush ]