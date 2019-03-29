actions
serialize: anObject toFile: aFile
	SmartRefStream
		newFileNamed: aFile
		do: [ :file | 
			file
				sandstoneNextPutObjOnly: anObject;
				flush ]