actions
removeCachedOfClass: aClass from: anId 
	"calling delete multiple times shouldn't cause an error"
	^ (cache at: aClass) removeKey: anId
		ifAbsent: [ nil ]