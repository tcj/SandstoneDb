delegated queries
forClass: aClass detect: aBlock ifNone: aHandler
	| found |
	self refresh.
	aClass withAllSubclasses
		do: [ :each | 
			found := (self db root at: each name) detect: aBlock ifNone: [ nil ].
			found ifNotNil: [ ^ found ] ].
	^ aHandler value