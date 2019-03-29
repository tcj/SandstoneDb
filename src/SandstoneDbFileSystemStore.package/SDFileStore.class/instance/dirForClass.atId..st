queries
dirForClass: aClass atId: anId 
	"Grab the correct hashed subdirectory for this record"
	^ (self dirForClass: aClass) / (self dirNameFor: anId)