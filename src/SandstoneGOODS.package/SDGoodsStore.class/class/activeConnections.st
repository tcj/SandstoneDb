actions
activeConnections
	"grab all KKDatabase connections from the environment of all active processes"

	^ ((Process allInstances
		select: [ :e | e isTerminated not ])
			collect: [ :p | p environmentAt: self processLocalName ifAbsent: [ nil ] ]) 
				reject: [ :e | e isNil ]