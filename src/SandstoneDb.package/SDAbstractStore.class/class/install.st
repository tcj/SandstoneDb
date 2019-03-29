actions
install
	"convience method for quickly installing a new store"

	[ SDActiveRecord
		setStore: self new;
		warmUpAllClasses ] forkAt: Processor userBackgroundPriority named: 'loading new store'