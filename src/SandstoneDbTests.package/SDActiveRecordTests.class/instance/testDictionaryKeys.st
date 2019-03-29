testing
testDictionaryKeys
	| dad |
	dad := self manClass testPerson save.
	kid save.
	mom children: (Dictionary with: dad -> kid).
	mom save.
	self flushAndReload.
	self 
		assert: (mom refreshed children at: dad refreshed )
		equals: kid refreshed