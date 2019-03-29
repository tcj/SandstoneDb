queries
atId: anId ifAbsent: aHandler 
	"hitting this in a tight loop for a class with subclasses can be very expensive
	because allCaches has to concatenate all the subclasses caches into a new copy
	that contains all subclass records"
	^  Store forClass: self at: anId ifAbsent: aHandler