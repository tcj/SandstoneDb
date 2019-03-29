*sandstonedb
sandstoneResolveReferencesVisits: visitedParts
	super sandstoneResolveReferencesVisits: visitedParts.
	self rehash.
	^ self