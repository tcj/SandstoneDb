accessing
select: aBlock
	^ lock critical: [ dictionary select: aBlock  ]