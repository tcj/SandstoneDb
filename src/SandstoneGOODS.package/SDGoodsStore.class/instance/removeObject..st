actions
removeObject: anObject
	self
		runInTransaction: [ 
			(self db root at: anObject className)
				removeKey: anObject id
				ifAbsent: [ "ignore, multiple delete should not explode" ] ]