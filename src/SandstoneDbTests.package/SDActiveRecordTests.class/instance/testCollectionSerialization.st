testing
testCollectionSerialization
	kid save.
	mom children: (OrderedCollection with: kid).
	mom save.
	self flushAndReload.
	self assert: (mom refreshed children includes: kid refreshed)