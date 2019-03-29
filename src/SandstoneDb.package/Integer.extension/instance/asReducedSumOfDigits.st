*sandstonedb
asReducedSumOfDigits
	"Answers the sum of the digits present in the 
	decimal representation of the receiver 
	but also repeating the procedure if the 
	answers is greater than 9."
	^ 10 <= self 
		ifFalse: [ self ]
		ifTrue: 
			[ self = 10 
				ifTrue: [ 0 ]
				ifFalse: 
					[ (self asString 
						inject: 0
						into: [ :sum :e | sum + e digitValue ]) asReducedSumOfDigits ] ]