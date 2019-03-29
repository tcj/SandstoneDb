running
tearDown
	self personClass do: [ :each | [each delete] on: Error do: [] ].
	self personClass coolDown.
	SDFooObject do: [:each | [each delete] on: Error do: [] ].
	self personClass allSubclassesDo: [ :each | each coolDown ].
	Smalltalk garbageCollectMost 