delegated queries
forClass: aClass detect: aBlock ifNone: aHandler 
	aClass withAllSubclasses
		do: [ :class | 
			((cache at: class) detect: aBlock ifNone: [ nil ])
				ifNotNilDo: [ :found | ^ found ] ].
	^ aHandler value