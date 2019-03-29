*sandstonedbfiledirectorystore
sandstoneNextPutObjOnly: anObject 
	"Really write three objects: (version, class structure, object).  But only when called from the outside.  Not in fileOut format.  No class definitions will be written for instance-specific classes.  Error if find one.  (Use nextPut: instead)"
	| info |
	topCall 
		ifNil: 
			[ topCall := anObject.
			super nextPut: ReferenceStream versionCode.
			info := self instVarInfo: anObject.
			objCount := 0.
			super nextPut: info.
			super nextPut: anObject.	"<- the real writing"
			"Class inst vars not written here!"
			topCall := nil
			"references is an IDict of every object that got written
			(in case you want to take statistics)"
			"Transcript cr; show: structures keys printString."	"debug"	"reset it" ]
		ifNotNil: [ super nextPut: anObject ]