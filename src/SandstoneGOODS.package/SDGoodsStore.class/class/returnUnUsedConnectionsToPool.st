actions
returnUnUsedConnectionsToPool
	(KKDatabase allInstances difference: self activeConnections)
		do: [ :db | 
			db isConnected
				ifTrue: [ ConnectionPool sandstoneNextPutIfMissing: db ] ]