testing
testBagSerialization
	kid save.
	mom children: (Bag with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)