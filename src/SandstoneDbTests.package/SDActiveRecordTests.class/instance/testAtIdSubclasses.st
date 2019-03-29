testing
testAtIdSubclasses
	| man woman |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.
	mom save.
	self assert: (self personClass atId: mom id) = mom.
	self assert: (self personClass atId: man id) = man.
	self assert: (self personClass atId: woman id) = woman.
	man delete.
	woman delete