testing
testDo
	kid save.
	self flushAndReload.
	self assert: 1 equals: self personClass findAll size.
	self personClass do: [ :e | self assert: e = kid ]