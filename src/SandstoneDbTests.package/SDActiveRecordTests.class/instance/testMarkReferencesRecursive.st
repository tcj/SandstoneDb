testing
testMarkReferencesRecursive
	kid buddy: #not -> mom.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value isKindOf: SDRecordMarker)