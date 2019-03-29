*sandstonedb-serialization
sandstoneResolveReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone references to active record to become active records.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ it ].
	visitedParts at: self put: self.
	self class allInstVarNames do: 
		[ :name | 
		| var |
		var := self instVarNamed: name.
		(var isSandstoneMarker) 
			ifTrue: 
				[ self 
					instVarNamed: name
					put: var asOriginalObject ]
			ifFalse: [ var sandstoneResolveReferencesVisits: visitedParts ] ].
	^ self