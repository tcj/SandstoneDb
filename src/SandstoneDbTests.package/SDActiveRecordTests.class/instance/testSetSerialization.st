testing
testSetSerialization
	kid save.
	mom children: (Set with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)