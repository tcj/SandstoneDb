actions
removeObject: anObject
	| dir |
	super removeObject: anObject.
	dir := self dirForClass: anObject class atId: anObject id.	
	"kill all versions or failed commits of this object"
	dir
		deleteFileNamed: anObject id , '.obj';
		deleteFileNamed: anObject id , '.new';
		deleteFileNamed: anObject id , '.old'