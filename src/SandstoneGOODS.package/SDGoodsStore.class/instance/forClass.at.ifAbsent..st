delegated queries
forClass: aClass at: anId ifAbsent: aHandler
	self refresh.
	aClass withAllSubclasses 
		do: [ :each | 
			(self db root at: each name) 
				at: anId 
				ifPresent: [ :record | ^ record ] ].
	^ aHandler value