actions
ensureForClass: aClass
	cache 
		at: aClass 
		ifAbsentPut: [ SDConcurrentDictionary on: (Dictionary new: self defaultCacheSize) ]