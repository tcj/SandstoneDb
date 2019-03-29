accessing
do: aBlock
	^ lock critical: [ dictionary do: aBlock ]