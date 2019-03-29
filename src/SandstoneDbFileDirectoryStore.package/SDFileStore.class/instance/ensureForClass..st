actions
ensureForClass: aClass 
	| dir |
	super ensureForClass: aClass.
	dir := (self dirForClass: aClass) assureExistence.
	0 
		to: 9
		do: [ :num | (dir directoryNamed: num asString) assureExistence ].
