testing
testMarkReferencesRecursiveDeeperInCollection
	kid buddy: #not -> {  (#deeper -> mom)  }.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value first value isKindOf: SDRecordMarker)