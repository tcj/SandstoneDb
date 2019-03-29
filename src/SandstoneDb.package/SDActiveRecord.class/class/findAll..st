queries
findAll: aBlock 
	^ ( Store forClass: self findAll: aBlock ) values