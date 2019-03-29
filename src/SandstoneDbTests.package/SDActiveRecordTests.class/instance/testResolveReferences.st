testing
testResolveReferences
	mom save.
	kid mother: mom asReferenceMarker.
	kid sandstoneResolveReferences.
	self assert: (kid mother isKindOf: SDActiveRecord)