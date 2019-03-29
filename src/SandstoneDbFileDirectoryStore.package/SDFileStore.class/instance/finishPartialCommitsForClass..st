crash recovery
finishPartialCommitsForClass: aClass 
	"find where .new exists but .obj doesn't, rename .obj.new to
	.obj to finish commit'"
	
	[ (self dirForClass: aClass) fullNamesOfAllFilesInSubtree 
		select: [ :each | each endsWith: '.obj.new' ]
		thenDo: 
			[ :each | 
			| objFile dir |
			objFile := FileDirectory localNameFor: (each 
					copyReplaceAll: '.new'
					with: '').
			dir := FileDirectory forFileName: each.
			(dir fileExists: objFile) ifFalse: 
				[ dir 
					rename: (FileDirectory localNameFor: each)
					toBe: objFile ] ] ] 
		on: Error
		do: 
			[ :err | 
			Transcript
				show: err;
				cr ]