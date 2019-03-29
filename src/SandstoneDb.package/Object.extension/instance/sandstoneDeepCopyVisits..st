*sandstonedb-serialization
sandstoneDeepCopyVisits: visitedParts 
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| newObject class index value |
	visitedParts at: self ifPresent: [ :it | ^ it ].
	class := self class.
	class isVariable 
		ifTrue: 
			[ index := self basicSize.
			newObject := class basicNew: index.
			[ index > 0 ] whileTrue: 
				[ newObject 
					basicAt: index
					put: ((self basicAt: index) sandstoneDeepCopyVisits: visitedParts).
				index := index - 1 ] ]
		ifFalse: [ newObject := class basicNew ].
	visitedParts at: self put: newObject.
	index := class instSize.
	[ index > 0 ] whileTrue: 
		[ value := self instVarAt: index.
		newObject 
			instVarAt: index
			put: (value isSandstoneActiveRecord 
					ifTrue: [ value ]
					ifFalse: [ value sandstoneDeepCopyVisits: visitedParts ]).
		index := index - 1 ].
	^ newObject