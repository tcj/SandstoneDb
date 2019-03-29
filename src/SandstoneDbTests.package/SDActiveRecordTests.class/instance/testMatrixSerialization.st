testing
testMatrixSerialization
	| man woman |
	man := self manClass testPerson save.
	woman := self womanClass testPerson save.	kid save.
	mom children: (Matrix rows: 4 columns: 4).
	mom children at: 1 at: 1 put: kid.
	mom children at: 2 at: 1 put: man.
	mom children at: 1 at: 2 put: woman.
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children at: 1 at: 1) equals: kid refreshed.
	self assert: (mom refreshed children at: 2 at: 1) equals: man refreshed.
	self assert: (mom refreshed children at: 1 at: 2) equals: woman refreshed