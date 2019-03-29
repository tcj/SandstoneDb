delegated queries
forClass: aClass do: aBlock
	self refresh.
	aClass withAllSubclasses 
		do: [ :each | (self db root at: each name) values do: aBlock ]