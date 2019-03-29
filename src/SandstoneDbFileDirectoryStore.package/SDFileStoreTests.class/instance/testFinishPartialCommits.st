running
testFinishPartialCommits
	kid save.
	(store 
		dirForClass: kid class
		atId: kid id) 
		rename: kid id , '.obj'
		toBe: kid id , '.obj.new'.
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new').
	store finishPartialCommitsForClass: kid class.
	self assert: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj').
	self deny: ((store 
			dirForClass: kid class
			atId: kid id) fileExists: kid id , '.obj.new')