*sandstonedbfiledirectorystore
sandstoneRename: oldFileName toBe: newFileName
	| oldName newName |
	"a non interactive version of rename that won't promp the UI on failure"
	oldName := self fullNameFor: oldFileName.
	newName := self fullNameFor: newFileName.
	(StandardFileStream 
		retryWithGC:[self primRename: oldName asVmPathName to: newName asVmPathName]
		until:[:result| result notNil]
		forFileNamed: oldName) ~~ nil ifTrue:[^self].
	(self fileExists: oldFileName) ifFalse:[
		^self error:'Attempt to rename a non-existent file'.
	].
	^self error:'Failed to rename file'.