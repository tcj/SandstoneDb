crash recovery
finishPartialCommitsForClass: aClass 
	"find where .new exists but .obj doesn't, rename .obj.new to
	.obj to finish commit'"
	
	[ (self dirForClass: aClass) allFiles 
		select: [ :each | 
			(each basename) endsWith: '.obj.new' ]
		thenDo: 
			[ :each | 
			| objFile dir |
			objFile := (each basename)
					copyReplaceAll: '.new'
					with: '' .
			dir := each parent .
			((dir / objFile) exists) ifFalse: 
				[ each renameTo: objFile ] ] ] 
		on: Error
		do: 
			[ :err | 
			Transcript
				show: 'finishPartialCommitsForClass: ' , err printString;
				cr ]