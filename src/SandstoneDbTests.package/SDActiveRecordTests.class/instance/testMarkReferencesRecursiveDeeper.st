testing
testMarkReferencesRecursiveDeeper
	kid buddy: #not -> (#deeper -> mom).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value value isKindOf: SDRecordMarker)