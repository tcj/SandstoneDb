accessing
at: aKey
	^ lock critical: [ dictionary at: aKey ]