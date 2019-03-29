testing
testMarkReferences
	kid mother: mom.
	mom save.
	kid sandstoneMarkReferences.
	self assert: (kid mother isKindOf: SDRecordMarker).
	self assert: mom id = kid mother id.
	self assert: kid mother className = mom className