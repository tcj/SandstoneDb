class initialization
initialize
	"self initialize"

	ConnectionPool := SharedQueue new.
	Smalltalk addToStartUpList: self