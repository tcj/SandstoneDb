actions
flushDb
	"send flushAll or flush, depending on the flush count"

	self increaseFlushCounter.
	self flushCounter = 11
		ifTrue: [ 
			self db flushAll.
			self flushCounter: 0 ]
		ifFalse: [ self db flush ]