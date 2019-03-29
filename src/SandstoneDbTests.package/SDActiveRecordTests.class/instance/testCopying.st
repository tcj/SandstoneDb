testing
testCopying
	| copy |
	copy := mom copy.
	self deny: copy = mom.
	self deny: copy id = mom id.
	self assert: copy isNew