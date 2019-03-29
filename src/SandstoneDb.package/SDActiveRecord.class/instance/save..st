actions
save: aBlock 
	^ self critical: 
		[ aBlock value.
		self save ]