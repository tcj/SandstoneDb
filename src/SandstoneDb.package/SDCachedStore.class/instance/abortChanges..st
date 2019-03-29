actions
abortChanges: anObject 
	| diskVersion |
	anObject critical: 
		[ self 
			removeCachedOfClass: anObject class
			from: anObject id.
		diskVersion := self 
			cachedLoadOfClass: anObject class
			from: anObject id.
		diskVersion 
			ifNil: 
				[ self 
					addCachedOfClass: anObject class
					at: anObject id
					put: anObject ]
			ifNotNil: [ anObject becomeForward: diskVersion ] ]