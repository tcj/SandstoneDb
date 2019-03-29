actions
ensureForClass: aClass 
	| dir |
	super ensureForClass: aClass.
	dir := (self dirForClass: aClass) ensureDirectory .
	0 
		to: 9
		do: [ :num | (dir / num asString) ensureDirectory ].
