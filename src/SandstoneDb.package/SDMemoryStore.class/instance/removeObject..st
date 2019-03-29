actions
removeObject: anObject 
	super removeObject: anObject.
	Instances removeKey: anObject id ifAbsent: []