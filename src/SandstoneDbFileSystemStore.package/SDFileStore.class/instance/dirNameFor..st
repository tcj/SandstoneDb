queries
dirNameFor: anId 
	"Answers a string with one decimal digit corresponding to anId.  There is a bug
	in this that does not ever hash to the directory 1, but because of existing datasets
	this must remain, do not want to rehash my databases and it is no big deal"
	self flag: #knownBug.
	^ (anId inject: 0 into: [ : sum : e | sum + e asInteger ]) asReducedSumOfDigits asString