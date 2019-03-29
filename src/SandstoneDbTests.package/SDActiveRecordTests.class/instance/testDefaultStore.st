testing
testDefaultStore
	self assert: (SDActiveRecord defaultStore isKindOf: SDAbstractStore)