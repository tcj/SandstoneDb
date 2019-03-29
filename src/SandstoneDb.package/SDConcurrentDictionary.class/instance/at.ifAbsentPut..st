accessing
at: aKey ifAbsentPut: aBlock 
	^ lock critical: 
		[ dictionary 
			at: aKey
			ifAbsentPut: aBlock ]