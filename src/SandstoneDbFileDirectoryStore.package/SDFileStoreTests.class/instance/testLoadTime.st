running
testLoadTime
	| commitTime people lookupTime loadTime |
	people := (1 to: 25) collect: [ :it | self personClass testPerson ].
	commitTime := [ people do: [ :each | each save ] ] timeToRun milliSeconds.
	lookupTime := [ people do: [ :each | self personClass atId: each id ] ] timeToRun milliSeconds.
	loadTime := [ 
	SDActiveRecord resetStoreForLoad.
	SDPersonMock
		withAllSubclassesDo: [ :each | SDActiveRecord store ensureForClass: each ];
		withAllSubclassesDo: [ :each | each warmUp ].
	SDActiveRecord store ensureForClass: SDFooObject.
	SDFooObject warmUp ] timeToRun milliSeconds.
	Transcript
		show: commitTime;
		cr;
		show: loadTime;
		cr;
		show: lookupTime;
		cr;
		cr.
	self assert: commitTime < 1 seconds