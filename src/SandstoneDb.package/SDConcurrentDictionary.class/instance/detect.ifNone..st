accessing
detect: aBlock ifNone: aHandler
	^ lock critical: [ dictionary detect: aBlock ifNone: aHandler ]