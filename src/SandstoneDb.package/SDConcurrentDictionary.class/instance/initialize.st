initialization
initialize
	super initialize.
	"I'm using a Monitor rather than a Semaphor here because I need to support 
	reentrant operations by the same process, a Semaphor is too low level"
	lock := Monitor new