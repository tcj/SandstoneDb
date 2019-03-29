delegated queries
forClass: aClass
	| result |
	result := Dictionary new.
	self refresh.
	"optimization for the usual case of no subclasses avoiding a copy of the 
	possibly large dictionary the instances are in"
	aClass subclasses 
		ifEmpty: [ ^ self db root at: aClass name ].
	aClass withAllSubclasses 
		do: [ :each | result addAll: (self db root at: each name) ].
	^ result