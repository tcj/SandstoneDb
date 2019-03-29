actions
storeObject: anObject
	self runInTransaction: [ (self db root at: anObject className) at: anObject id put: anObject ]