serialization
sandstoneResolveReferences
	"Replaces the receiver markers with
	active records where it is needed"
	^ self sandstoneResolveReferencesVisits: self class defaultIdentityDictionary