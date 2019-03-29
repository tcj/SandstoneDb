initialize-release
initialize
	super initialize.
	id ifNil: [ id := UUID new asString36 ].
	createdOn := updatedOn := DateAndTime now.
	version := 0.
	isNew := true