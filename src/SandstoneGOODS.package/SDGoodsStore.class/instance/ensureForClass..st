initialization
ensureForClass: aClass
	| db |
	db := self db.
	db root ifNil: [ db commitWithRetry: [ db root: self dictionaryClass new ] ].
	db commitWithRetry: [ db root at: aClass name ifAbsentPut: [ self dictionaryClass new ] ]