serialization
sandstoneMarkReferences
	"Replaces the receiver (sub) active records 
	with Sandstone references where it is needed"
	^ self sandstoneMarkReferencesVisits: self class defaultIdentityDictionary