*sandstonedb-serialization
sandstoneMarkReferencesVisits: visitedParts 
	"Mark components of the introspectee which are 
	Sandstone active records to become references.
	Do this deeply (sub components)."
	self class isMeta ifTrue: [ ^ self ].
	visitedParts at: self ifPresent: [:it | ^ self ].
	visitedParts at: self put: self.
	self doWithIndex: 
		[ :each :index | 
		each isSandstoneActiveRecord 
			ifTrue: [ self at: index put: each asReferenceMarker ]
			ifFalse: [ each sandstoneMarkReferencesVisits: visitedParts ] ].
	^ self