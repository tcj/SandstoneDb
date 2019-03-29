testing
testDictionarySerialization
	kid save.
	mom children: (Dictionary with: #son -> kid).
	mom save.
	self flushAndReload.
	self 
		assert: (mom refreshed children at: #son)
		equals: kid refreshed