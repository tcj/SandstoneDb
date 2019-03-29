queries
atId: anId 
	"hitting this in a tight loop for a class with subclasses can be very expensive
	because allCaches has to concatenate all the subclasses caches into a new copy
	that contains all subclass records"
	^ self 
		atId: anId
		ifAbsent: [ nil ]