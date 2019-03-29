copying
postCopy
	super postCopy.
	id := UUID new asString36.
	createdOn := updatedOn := DateAndTime now.
	version := 0.
	isNew := true