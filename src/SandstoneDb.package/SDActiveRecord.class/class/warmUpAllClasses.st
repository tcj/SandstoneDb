actions
warmUpAllClasses
	
	SDActiveRecord
		allSubclassesDo: [ :each | self store ensureForClass: each ];
		allSubclassesDo: [ :each | each warmUp ]