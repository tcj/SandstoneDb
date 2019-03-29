actions
inTransaction: aValue
	"per process flag to know when to skip inner transaction refresh and commits"

	Processor activeProcess environmentAt: self processLocalTransactionFlagName put: aValue