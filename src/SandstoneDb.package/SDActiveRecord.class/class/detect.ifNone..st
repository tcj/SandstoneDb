queries smalltalk style
detect: aBlock ifNone: alternateBlock
	^ self find: aBlock ifAbsent: alternateBlock 