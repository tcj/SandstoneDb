accessing
at: aKey put: aValue 
	^ lock critical: 
		[ dictionary 
			at: aKey
			put: aValue ]