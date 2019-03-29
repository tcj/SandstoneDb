copying
, aCollection 
	^ lock critical: [ self class on: dictionary , aCollection ]