testing
testMarkReferencesStops
	| other |
	other := self manClass testPerson save.
	mom father: other.
	kid buddy: #some -> (#time -> mom).
	mom save.
	kid sandstoneMarkReferences.
	self assert: (mom father == other)