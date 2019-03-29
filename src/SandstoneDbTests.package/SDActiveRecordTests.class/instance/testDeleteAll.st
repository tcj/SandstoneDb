testing
testDeleteAll
	50 timesRepeat: [ self personClass testPerson save ].
	self personClass do: #delete.
	self assert: self personClass findAll size = 0