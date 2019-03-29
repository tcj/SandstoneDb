running
testLoadMissingFile
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) deleteFileNamed: kid id , '.obj'.
	self 
		should: 
			[ store 
				loadClass: kid class
				atId: kid id ]
		raise: SDLoadError