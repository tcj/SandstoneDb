testing
testResolveReferencesRecursive
	mom save.
	kid buddy: #not -> mom asReferenceMarker.
	kid sandstoneResolveReferences.
	self assert: (kid buddy value isKindOf: SDActiveRecord)