accessing
associationsDo: aBlock
	^ lock critical: [ dictionary associationsDo: aBlock ]