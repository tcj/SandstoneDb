running
testSaveMissingFile
	self assert: kid isNew.
	kid save.
	self deny: kid isNew.
	(store 
		dirForClass: kid class
		atId: kid id) deleteFileNamed: kid id , '.obj'.
	kid save.
	self deny: kid isNew