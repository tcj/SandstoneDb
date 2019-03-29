testing
testObjectFoundMultipleTimesInAggregate
	| obj key |
	obj := SDPersonMock new.
	obj children: Dictionary new.
	key := Object new.
	obj children at: key put: 1.
	obj children at: 1 put: key.
	self deny: (obj children keys includes: nil).
	self deny: (obj children values includes: nil).
	obj save.
	self flushAndReload.
	self deny: (obj children keys includes: nil).
	self deny: (obj children values includes: nil)