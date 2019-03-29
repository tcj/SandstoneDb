testing
testDelete
	kid save.
	self deny: kid isNew.
	self assert: kid version equals: 1.
	kid delete.
	self assert: kid isNew.
	self assert: kid version equals: 0.
	self assert: (self personClass find: [ :each | each id = kid id ]) isNil.
	self flushAndReload.
	self assert: (self personClass find: [ :each | each id = kid id ]) isNil.
	kid delete "should not do anything"