testing
testFind
	kid save.
	self flushAndReload.
	self deny: (self personClass find: [ :each | each id = kid id ]) isNil.
	self assert: (self personClass find: [ :each | each id = 'not' ]) isNil