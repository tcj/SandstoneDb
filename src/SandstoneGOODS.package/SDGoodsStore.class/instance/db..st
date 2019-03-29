accessing
db: aConnection
	aConnection
		ifNil: [ Processor activeProcess environmentRemoveKey: self class processLocalName ifAbsent: [  ] ]
		ifNotNil: [ Processor activeProcess environmentAt: self class processLocalName put: aConnection ].
	^ aConnection