testing
testMarkReferencesRecursiveDeeperNestedList
	kid buddy: #not -> (Array with: (Array with: mom)).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid buddy value first first isKindOf: SDRecordMarker)