actions
updateObject: anObject
	| oldObject |
	self
		runInTransaction: [ 
			oldObject := self
				forClass: anObject class
				at: anObject id
				ifAbsent: [ self error: 'Trying to update a new object. Bug.' ].
			oldObject xxxIsProxy
				ifTrue: [ oldObject := oldObject xxxObject ].
			oldObject class allInstVarNames
				do: [ :each | oldObject instVarNamed: each asSymbol put: (anObject instVarNamed: each asSymbol) ] ]