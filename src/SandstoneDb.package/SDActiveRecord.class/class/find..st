queries
find: aBlock 
	^ self 
		find: aBlock
		ifAbsent: [ nil ]