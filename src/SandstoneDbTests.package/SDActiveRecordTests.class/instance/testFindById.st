testing
testFindById
	kid save.
	self deny: (self personClass atId: kid id) isNil