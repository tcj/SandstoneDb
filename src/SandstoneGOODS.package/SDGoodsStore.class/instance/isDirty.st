actions
isDirty
	"per process flag to know when a commit is actually necessary"

	^ Processor activeProcess environmentAt: self processLocalDirtyFlagName ifAbsent: [ false ]