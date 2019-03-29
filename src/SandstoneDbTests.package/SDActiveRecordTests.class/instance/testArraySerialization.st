testing
testArraySerialization
	kid save.
	mom children: {  kid  }.
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)