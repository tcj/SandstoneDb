testing
testFindIdentity
	mom save.
	self flushAndReload.
	self assert: (self personClass atId: mom id) = (self personClass atId: mom id)