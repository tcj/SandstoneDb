testing
testMarkReferencesRecursiveDeeperNotTouchedInOrig
	| otherKid |
	kid buddy: #not -> (#deeper -> mom).
	otherKid := kid sandstoneDeepCopy.
	otherKid buddy value value save.
	otherKid sandstoneMarkReferences.
	self assert: (kid buddy value value isKindOf: mom class)