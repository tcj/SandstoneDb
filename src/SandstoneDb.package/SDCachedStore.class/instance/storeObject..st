actions
storeObject: anObject 
	self 
		addCachedOfClass: anObject class
		at: anObject id
		put: anObject.