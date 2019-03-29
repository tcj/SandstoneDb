testing
testMarkReferencesRecursiveDeeperInDictionary
	kid buddy: #not -> { (Dictionary with: #deeper -> mom) }.
	mom save.
	kid sandstoneMarkReferences.
	self assert: ((kid buddy value first at: #deeper) isKindOf: SDRecordMarker)