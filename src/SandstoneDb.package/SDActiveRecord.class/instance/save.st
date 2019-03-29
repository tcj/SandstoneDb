actions
save
	"I'm using monitors for locking so this can be wrapped in larger critical
	in your application code if you want more scope on the critical'"
	| isFirstSave |
	^ self critical: 
		[ self validate.
		(isFirstSave := isNew) ifTrue: [ self onBeforeFirstSave ].
		self onBeforeSave.
		isFirstSave 
			ifTrue: [Store storeObject: self] 
			ifFalse: [Store updateObject: self].
		isFirstSave ifTrue: [ self onAfterFirstSave ].
		self onAfterSave.
		self ]