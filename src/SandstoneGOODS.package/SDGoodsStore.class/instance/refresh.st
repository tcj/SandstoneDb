actions
refresh
	"if we're in a transaction, the refresh was already done once at the beginning'"

	| retried |
	self inTransaction ifTrue: [ ^ self ].
	retried := 0.
	[ self db refresh ]
		on: Error
		do: [ :error | 
			self db: nil.
			retried := retried + 1.
			retried > self maxRetries
				ifTrue: [ error pass ]
				ifFalse: [ error retry ] ]