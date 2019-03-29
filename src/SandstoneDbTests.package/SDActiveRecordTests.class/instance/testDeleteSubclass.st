testing
testDeleteSubclass
	kid := self manClass testPerson save.
	self deny: kid isNew.
	self assert: kid version equals: 1.
	kid delete.
	self assert: kid isNew.
	self assert: kid version equals: 0.
	self flushAndReload.
	self assert: (self manClass find: [ :each | each id = kid id ]) isNil.
