queries
dirForClass: aClass atId: anId 
	"Grab the correct hashed subdirectory for this record"
	^ (self dirForClass: aClass) directoryNamed: (self dirNameFor: anId)