testing
testFindAll
	kid save.
	self flushAndReload.
	self assert: (self personClass findAll class = Array).
	self assert: (self personClass findAll: [ :each | each id = 'not' ]) class = Array