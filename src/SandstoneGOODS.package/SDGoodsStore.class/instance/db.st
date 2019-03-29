accessing
db
	"KKDatabase  is not multithreaded, we need to use one per process, not one 
	globally that everyone shares.  ActiveRecord is only doing a critical section per 
	object to ensure two clients don't attempt to write to the same record at the same 
	time, such a lock will not protect the store from concurrent access.
	
	To solve the issue, we'll keep a goods connection per thread so it is never accessed
	concurrently and we'll start a cleanup process on the class side to scavenge connections
	no longer associated to a process and log them out"

	^ Processor activeProcess
		environmentAt: self class processLocalName
		ifAbsent: [ 
			self db: (ConnectionPool nextOrNil 
				ifNil: [ KKDatabase onHost: self class host port: self class port ]) ]