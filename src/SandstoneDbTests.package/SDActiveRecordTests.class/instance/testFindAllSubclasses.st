testing
testFindAllSubclasses
	| man woman child grandchild |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	child := self childClass testPerson save.
	grandchild := self grandChildClass testPerson save.
	mom save.
	self 
		assert: 5
		equals: self personClass findAll size.
	self assert: (self personClass findAll contains: [ :e | e class = self manClass ]).
	self 
		assert: 1
		equals: self manClass findAll size.
	self 
		assert: 3
		equals: self womanClass findAll size.
	self 
		assert: 2
		equals: self childClass findAll size.
	self 
		assert: 1
		equals: self grandChildClass findAll size.
	man delete.
	woman delete.
	child delete.
	grandchild delete