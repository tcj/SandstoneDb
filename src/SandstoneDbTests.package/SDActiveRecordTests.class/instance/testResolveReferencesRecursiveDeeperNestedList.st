testing
testResolveReferencesRecursiveDeeperNestedList
	mom save.
	kid buddy: #not -> (Array with: (Array with: mom asReferenceMarker)).
	kid sandstoneResolveReferences.
	self assert: (kid buddy value first first isKindOf: SDActiveRecord)