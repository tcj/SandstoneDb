testing
testDeleteAndFind
	kid name: 'zorgle'.
	kid save.
	self deny: kid isNew.
	kid delete.
	self assert: (self personClass find: [:e | e name = 'zorgle']) isNil.
