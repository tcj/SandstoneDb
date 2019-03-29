actions
delete
	"I'm using monitors for locking so this can be wrapped in larger critical
	in your application code if you want more scope on the critical'"
	self critical: 
		[ self onBeforeDelete.
		Store removeObject: self.
		self onAfterDelete.
		self initialize ]