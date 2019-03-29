actions
runInTransaction: aBlock
	"if I'm already in a bulk commit, just evaluate the block and exit and let
	the outer refresh commit worry about the final transaction'commit"
	
	| retried |
	self beDirty.
	self inTransaction ifTrue: [ ^ aBlock value ].
	retried := 0.
	[ [ self refresh.
	aBlock value.
	self db commit ]
		on: Error
		do: [ :error | 
			self db: nil.
			retried := retried + 1.
			retried > self maxRetries
				ifTrue: [ error pass ]
				ifFalse: [ error retry ] ] ] ensure: [ self flushDb ]