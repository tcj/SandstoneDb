delegated queries
familyForClass: aClass 
	^ aClass allSubclasses 
		inject: (cache at: aClass) 
		into: [ :sum :subclass | sum , (cache at: subclass)  ]