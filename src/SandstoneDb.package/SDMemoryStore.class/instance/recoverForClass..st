actions
recoverForClass: aClass 
	
	"Instances keysDo: [:e | self cachedLoadOfClass: aClass from: e]"

	(Instances associationsSelect: [ :a | a value class == aClass ]) 
		keysDo: [ :e |  self cachedLoadOfClass: aClass from:  e ]