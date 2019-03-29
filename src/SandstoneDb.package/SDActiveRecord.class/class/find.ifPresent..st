queries
find: aBlock ifPresent: aHandler 
	^ Store forClass: self detect: aBlock ifFound: aHandler