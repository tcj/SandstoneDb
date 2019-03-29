testing
testVersion
	self assert: kid version equals: 0.
	kid save.
	self assert: kid version equals: 1.
	kid save.
	self assert: kid version equals: 2