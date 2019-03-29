running
testDeleteOldVersions
	| id |
	kid save.
	kid save.
	id := kid id.
	kid delete.
	self assert: ((store 
			dirForClass: kid class
			atId: id) fileNamesMatching: id , '.*') isEmpty