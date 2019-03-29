initialization
startUp
	CleanupProcess ifNotNil: [ CleanupProcess terminate ].
	SDActiveRecord store class = self ifFalse: [ ^ self ].
	CleanupProcess := [ [ [ 
		(Delay forSeconds: 2) wait.
		self returnUnUsedConnectionsToPool ] 
		ifError: [ :error | Transcript show: error ] ] repeat ] newProcess.

	CleanupProcess
		name: 'Goods connection pool';
		priority: Processor userBackgroundPriority;
		resume