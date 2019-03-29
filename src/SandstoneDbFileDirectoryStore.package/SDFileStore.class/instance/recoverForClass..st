actions
recoverForClass: aClass 
	self
		finishPartialCommitsForClass: aClass;
		deleteFailedCommitsForClass: aClass;
		loadChangesForClass: aClass