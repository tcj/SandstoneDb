delegated queries
forClass: aClass findAll: aBlock
	| result |
	result := Dictionary new.
	self refresh.
	aClass withAllSubclasses 
		do: [ :class | result addAll: ((self db root at: class name) values select: aBlock) ].
	^ result