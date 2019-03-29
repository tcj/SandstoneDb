accessing
keysAndValuesDo: aBlock
	^ lock critical: [ dictionary keysAndValuesDo: aBlock ]