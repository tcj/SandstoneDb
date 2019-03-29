serialization
sandstoneDeepCopy
	"Replaces the receiver (sub) active records 
	with Sandstone references where it is needed"
	^ self sandstoneDeepCopyVisits: self class defaultIdentityDictionary