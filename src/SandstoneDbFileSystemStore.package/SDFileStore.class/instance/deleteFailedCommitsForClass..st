crash recovery
deleteFailedCommitsForClass: aClass 
	"all remaining .new files are failed commits, kill them"

	[ (self dirForClass: aClass) allChildren 
		select: [ :each | 
			each basename endsWith: '.new' ]
		"thenDo: [ :each | FileDirectory deleteFilePath: each ] ] "
		thenDo: [ :each | 
			each delete] ] 
		on: Error
		do: [ :err | Transcript show: 'deleteFailedCommitsForClass: ' , err printString ; cr ]