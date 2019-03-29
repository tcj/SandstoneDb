delegated queries
forClass: aClass detect: aBlock ifFound: aHandler
	| found |
	self refresh.
	aClass withAllSubclasses
		do: [ :each | 
			found := (self db root at: each name) detect: aBlock ifNone: [ nil ].
			found
				ifNotNil: [ 
					aHandler value: found.
					^ found ] ].
	^ nil