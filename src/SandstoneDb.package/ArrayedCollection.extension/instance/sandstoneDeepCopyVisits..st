*sandstonedb-serialization
sandstoneDeepCopyVisits: visitedParts 
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| newObject |
	visitedParts at: self ifPresent: [ :it | ^ it ].
	newObject := self copy.
	visitedParts at: self put: newObject.
	"optimized implementation taking advantaged of ordering"
	newObject doWithIndex: 
		[ :each :index | 
		each isSandstoneActiveRecord ifFalse: 
			[ newObject 
				at: index
				put: (each sandstoneDeepCopyVisits: visitedParts) ] ].
	^ newObject