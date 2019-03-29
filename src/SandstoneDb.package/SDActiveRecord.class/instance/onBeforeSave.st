events
onBeforeSave
	"for overriding in subclasses to hook the objects lifecycle"
	updatedOn := DateAndTime now.
	version := version + 1.
	isNew := false