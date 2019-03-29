system startup
shutDown: isDown 
	isDown ifTrue: 
		[ SDActiveRecord store ensureDown.
		SDActiveRecord allSubclassesDo: [ :each | each coolDown ] ]