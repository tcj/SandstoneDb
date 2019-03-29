removing
removeKey: aKey
	^ lock critical: 
		[ dictionary 
			removeKey: aKey ]