actions
ensureForClass: aClass 
	"at startUp, the store is sent this message to tell it to make sure it's ready to run, a
	file store for instance may want to make sure it's directories exist"
	self subclassResponsibility