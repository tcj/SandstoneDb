actions
recoverForClass: aClass
	"The store is expected to loop through all it's stored instances of a class and
	load them via cachedLoadFrom: on the class which will dispatch back to 
	loadObjectOfClass:atId on the store when a cached version of the object is not found.
	This happens once per class at system startup"
	self subclassResponsibility