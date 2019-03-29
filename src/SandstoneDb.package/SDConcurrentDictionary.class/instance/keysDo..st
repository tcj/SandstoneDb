accessing
keysDo: aBlock
	^ lock critical: [ dictionary keysDo: aBlock ]