delegated queries
forClass: aClass detect: aBlock ifFound: aHandler
	aClass withAllSubclasses
		do: [ :class | 
			((cache at: class) detect: aBlock ifNone: [ nil ])
				ifNotNilDo: [ :found | 
					aHandler value: found.
					^ found ] ].
	^ nil