actions
abortChanges: anObject
	(self db)
		rollback;
		flush