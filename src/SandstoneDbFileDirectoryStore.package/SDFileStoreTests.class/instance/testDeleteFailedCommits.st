running
testDeleteFailedCommits
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) 
		copyFileNamed: kid id , '.obj'
		toFileNamed: kid id , '.obj.new'.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new').
	store deleteFailedCommitsForClass: kid class.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new')