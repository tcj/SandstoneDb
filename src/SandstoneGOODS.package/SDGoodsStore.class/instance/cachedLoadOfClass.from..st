delegated queries
cachedLoadOfClass: aClass from: anId 
	^ self 
		loadClass: aClass
		atId: anId