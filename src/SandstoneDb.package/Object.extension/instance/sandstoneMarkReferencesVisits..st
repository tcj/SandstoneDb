*sandstonedb-serialization
sandstoneMarkReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone active records to become references.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ it ].
	visitedParts at: self put: self.
	self class allInstVarNames do: 
		[ :name | 
		| var |
		var := self instVarNamed: name.
		var isSandstoneActiveRecord 
			ifTrue: 
				[ self 
					instVarNamed: name
					put: var asReferenceMarker ]
			ifFalse: [ var sandstoneMarkReferencesVisits: visitedParts ] ].
	^ self