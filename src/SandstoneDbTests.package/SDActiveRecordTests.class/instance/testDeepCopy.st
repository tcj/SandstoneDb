testing
testDeepCopy
	"sandstoneDeepCopy works just like deepCopy until it hits another active record
	at which point the copying stops, and the actual references is returned."
	| copy obj |
	kid save.
	mom save.
	kid buddy: #not -> (#deeper -> mom).
	obj := Object new.
	kid father: obj.
	copy := kid sandstoneDeepCopy.
	self assert: copy buddy value value == mom.
	self deny: copy father == obj