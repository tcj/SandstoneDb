actions
commit: aBlock
	"this is for Sandstone's bulk commit action, very nice to wrap around a 
	web request so there is only a single refresh, commit, and flush per 
	request rather than per query to the store."

	| retried result |
	retried := 0.
	result := nil.
	[ [ self refresh.
	self inTransaction: true.
	result := aBlock value.
	"When wrapping entire request in a single commit, avoid commit if nothing was
	marked dirty in the store.  Sort of a crude write barrier relying on the fact that one
	must call save on a record to mark an object dirty."
	self isDirty ifTrue: [ 
		'commit' outCr.
		self db commit ] ]
		on: Error
		do: [ :error | 
			self db: nil.
			retried := retried + 1.
			retried > self maxRetries
				ifTrue: [ error pass ]
				ifFalse: [ error retry ] ] ]
		ensure: [ 
			self flushDb.
			self inTransaction: false ].
	^ result