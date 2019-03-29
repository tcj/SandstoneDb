actions
storeObject: origObject
	"The basic idea here is to make a save as atomic as possible and no data 
	is corrupted, no partial writes, thus renaming files as atomic."

	| currentVersion newVersion oldVersion dir anObject |
	super storeObject: origObject.
	anObject := origObject sandstoneDeepCopy sandstoneMarkReferences.
	dir := self dirForClass: anObject class atId: anObject id.
	currentVersion := (dir / anObject id) absolutePath , 'obj'.
	newVersion := currentVersion , 'new'.
	oldVersion := currentVersion , 'old'.	"just in case a previous commit failed and left junk around"
	newVersion asFileReference delete.	"the flush ensures all data is actually written to disk before moving on"
	self class serializer serialize: anObject toFile: newVersion.
	oldVersion asFileReference delete .	"the pre-commit, on first save there won't be a current version, and fileExists is 
	too expensive to check when it'll always be there except on first save"
	"here sandstoneRename was used ...."
	[ currentVersion asFileReference renameTo: oldVersion basename ]
		ifError: [ 
			"just ignore it"
		].	"now the actual commit"
	newVersion asFileReference renameTo: currentVersion basename .	"clean up the junk (could fail if OS has lock on it for some reason)"
	oldVersion asFileReference delete .