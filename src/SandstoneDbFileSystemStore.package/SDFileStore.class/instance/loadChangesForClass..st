crash recovery
loadChangesForClass: aClass 
	| id obj |
	"(self dirForClass: aClass) withSubdirectoriesDo: [ :dir | "
	FileSystem disk directoriesAt: (self dirForClass: aClass) do: [ :dir |
		[ dir asFileReference entries do: 
			[ :each | 
			"there could be tens of thousands of entries, so using do with 
			a condition to avoid the copy a select would generate"
			each isDirectory ifFalse: 
				[ id := each basename copyUpTo: $. .
				obj := (cache at: aClass) at: id ifAbsent: [ nil ].
				obj 
					ifNil: [ self cachedLoadOfClass: aClass from:  id ]
					ifNotNil: [ obj abortChanges ] ] ] ]
			on: Error
			do: [ :err | 
				Transcript show: 'loadChangesForClass: ' , err messageText; cr ] ]