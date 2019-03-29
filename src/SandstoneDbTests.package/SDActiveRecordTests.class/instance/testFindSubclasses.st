testing
testFindSubclasses
	| man woman child grandchild |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	child := self childClass testPerson save.
	grandchild := self grandChildClass testPerson save.
	self assert: man = (self personClass find: [:e | e id = man id]).
	self assert: woman = (self personClass find: [:e | e id = woman id]).
	self assert: child = (self personClass find: [:e | e id = child id]).
	self assert: grandchild = (self personClass find: [:e | e id = grandchild id]).
	man delete.
	woman delete.
	child delete.
	grandchild delete