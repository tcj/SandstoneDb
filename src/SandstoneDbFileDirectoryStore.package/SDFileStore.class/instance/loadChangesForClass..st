crash recovery
loadChangesForClass: aClass 
	| id obj |
	(self dirForClass: aClass) withSubdirectoriesDo: [ :dir | 
		[ dir entries do: 
			[ :each | 
			"there could be tens of thousands of entries, so using do with 
			a condition to avoid the copy a select would generate"
			each isDirectory ifFalse: 
				[ id := each name copyUpTo: $..
				obj := (cache at: aClass) at: id ifAbsent: [ nil ].
				obj 
					ifNil: [ self cachedLoadOfClass: aClass from:  id ]
					ifNotNil: [ obj abortChanges ] ] ] ]
			on: Error
			do: [ :err | Transcript 	show: err; 	cr ] ]