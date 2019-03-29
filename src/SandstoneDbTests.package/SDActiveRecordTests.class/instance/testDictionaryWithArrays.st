testing
testDictionaryWithArrays
	| foo fooCopy |
	kid save.
	3 timesRepeat: [ self manClass new save ].
	foo := SDFooObject new
		dict: (Dictionary with: kid -> self manClass findAll);
		yourself.
	fooCopy := foo sandstoneDeepCopy.
	self deny: foo == fooCopy.
	self deny: fooCopy dict == foo dict.
	"Works fine before saving the object"
	foo dict keysAndValuesDo: 
		[ :key :value | 
		self assert: (key isKindOf: self personClass).
		value do: [ :each | self assert: (each isKindOf: self manClass) ] ].
	fooCopy sandstoneMarkReferences.
	"should still work, otherwise save is somehow modifying original object instead of deepCopy of it"
	foo dict keysAndValuesDo: 
		[ :key :value | 
		self assert: (key isKindOf: self personClass).
		value do: [ :each | self assert: (each isKindOf: self manClass) ] ]