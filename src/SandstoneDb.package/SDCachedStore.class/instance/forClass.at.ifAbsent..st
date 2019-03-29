actions
forClass: aClass at: anId ifAbsent: aHandler
	aClass withAllSubclasses
		do: [ :class | ((cache at: class) at: anId ifAbsent: [ nil ]) 
			ifNotNilDo: [ :result | ^ result ] ].
	^ aHandler value