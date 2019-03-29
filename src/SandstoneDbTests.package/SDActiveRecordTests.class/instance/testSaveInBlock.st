testing
testSaveInBlock
	kid save: [ self assert: kid isNew ].
	self deny: kid isNew