initialization
initialize
	"SDCheckPointer will act as the single agent to ensure all active record 
	subclasses are correctly initialized on start up."
	"self initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self
