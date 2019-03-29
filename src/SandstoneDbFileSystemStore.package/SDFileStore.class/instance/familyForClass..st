queries
familyForClass: aClass 
	"I'm returing raw cache dictionary here because this read only copy
	doesn't need concurrency protection, just a naked dictionary''"
	^ aClass allSubclasses 
		inject: (cache at: aClass) dictionary
		into: [ :sum :subclass | sum , (cache at: subclass) dictionary ]