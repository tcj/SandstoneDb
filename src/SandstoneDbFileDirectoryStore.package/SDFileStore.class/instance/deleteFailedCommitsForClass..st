crash recovery
deleteFailedCommitsForClass: aClass 
	"all remaining .new files are failed commits, kill them"
	
	[ (self dirForClass: aClass) fullNamesOfAllFilesInSubtree 
		select: [ :each | each endsWith: '.new' ]
		thenDo: [ :each | FileDirectory deleteFilePath: each ] ] 
		on: Error
		do: [ :err | Transcript show: err ]