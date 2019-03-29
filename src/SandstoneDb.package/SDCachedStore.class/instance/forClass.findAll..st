delegated queries
forClass: aClass findAll: aBlock 
	| result |
	result := Dictionary new.
	aClass withAllSubclasses do: [:class | 
		result addAll: ((cache at: class) select: aBlock) ].
	^ result