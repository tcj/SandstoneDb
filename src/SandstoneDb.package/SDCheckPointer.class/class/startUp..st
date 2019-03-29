system startup
startUp: isStarting 
	"Had problems reusing images from templated sites or existing sites
	and accidently mixing old data or another db into this images data.
	I want to ensure that any time an image starts up fresh from disk it always
	reloads all the data; setting a fresh store on startup will ensure this happens."
	SDActiveRecord store 
		ifNil: [ SDActiveRecord setStore: SDActiveRecord defaultStore ]
		ifNotNil: [ isStarting ifTrue: [ SDActiveRecord resetStoreForLoad ] ].

	"Load records on a priority just higher than Seaside so db is loaded before
	requests start coming in, don't want users seeing missing data."
	[ isStarting ifTrue: [ SDActiveRecord warmUpAllClasses ] ] 
		forkAt: Processor userBackgroundPriority - 1
		named: 'loading sandstone'