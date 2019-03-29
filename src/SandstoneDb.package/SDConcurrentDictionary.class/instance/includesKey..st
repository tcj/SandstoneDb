testing
includesKey: aKey
	^ lock critical: [ dictionary includesKey: aKey ]