initialization
ensureDown
	| db |
	db := self db.
	db
		ifNotNil: [ 
			db flushAll.
			db isConnected
				ifTrue: [ db logout ] ].
	Processor activeProcess environmentRemoveKey: self class processLocalName ifAbsent: [  ]