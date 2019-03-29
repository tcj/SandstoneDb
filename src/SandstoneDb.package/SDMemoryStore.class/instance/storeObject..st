actions
storeObject: anObject 
	super storeObject: anObject.
	Instances 
		at: anObject id
		put: anObject sandstoneDeepCopy sandstoneMarkReferences