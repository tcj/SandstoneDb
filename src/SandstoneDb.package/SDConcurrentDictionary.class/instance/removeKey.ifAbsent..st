removing
removeKey: aKey ifAbsent: aBlock 
	^ lock critical: 
		[ dictionary 
			removeKey: aKey
			ifAbsent: aBlock ]