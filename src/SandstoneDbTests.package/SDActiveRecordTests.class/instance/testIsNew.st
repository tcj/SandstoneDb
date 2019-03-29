testing
testIsNew
	self assert: kid isNew.
	kid save.
	self deny: kid isNew.
	kid delete.
	self assert: kid isNew.