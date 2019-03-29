accessing
flushCounter: anObject
	"Since the db is a per process local, the counter for flushing it needs to be as well"

	^ Processor activeProcess environmentAt: self processLocalCounterName put: anObject