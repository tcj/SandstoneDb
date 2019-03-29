accessing
at: aKey ifAbsent: aBlock 
	^ lock critical: 
		[ dictionary 
			at: aKey
			ifAbsent: aBlock ]