queries
cachedLoadOfClass: aClass from: anId
	^ (cache at: aClass)
		at: anId
		ifAbsent: [ 
			(self loadClass: aClass atId: anId)
				ifNotNilDo: [ :it | 
					"seems I have to make sure to cache the object before I can resolve 
				it's references so any backreferences to it don't try and load from 
				disk again''"
					(cache at: aClass) at: anId put: it.
					it sandstoneResolveReferences ] ]