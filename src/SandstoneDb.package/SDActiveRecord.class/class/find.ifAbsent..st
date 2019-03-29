queries
find: aBlock ifAbsent: aHandler 
	^ Store forClass: self detect: aBlock ifNone: aHandler