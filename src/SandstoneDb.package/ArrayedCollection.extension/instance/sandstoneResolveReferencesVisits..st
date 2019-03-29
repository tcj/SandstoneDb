*sandstonedb-serialization
sandstoneResolveReferencesVisits: visitedParts 
	"Make components of the introspectee which are 
	Sandstone references to active record to become active records.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [ :it | ^ it ].
	visitedParts at: self put: self.
	"It is crucial to modify the introspectee by iterating a copy of it"
	self copy doWithIndex: 
		[ :each :index | 
		each isSandstoneMarker 
			ifTrue: [ self at: index put: each asOriginalObject ]
			ifFalse: [ each sandstoneResolveReferencesVisits: visitedParts ] ].
	^ self