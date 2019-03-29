testing
testEquality
	mom save.
	kid mother: mom.
	kid save.
	self flushAndReload .
	self assert: kid refreshed mother equals: mom refreshed