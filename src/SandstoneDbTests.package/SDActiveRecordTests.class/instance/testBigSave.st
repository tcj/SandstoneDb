testing
testBigSave
	| commitTime people deleteTime lookupTime |
	people := (1 to: 200) collect: [ :it | self personClass testPerson ] .
	commitTime := [ people do: [ :each | each save ]  ] timeToRun milliSeconds.
	lookupTime := [ people do: [ :each | self personClass atId: each id ] ] timeToRun
		milliSeconds.
	deleteTime := [ people do: [ :each | each delete ] ] timeToRun milliSeconds.
	Transcript
		show: commitTime;
		cr;
		show: lookupTime;
		cr;
		show: deleteTime;
		cr;
		cr.
	self assert: commitTime < 3 seconds.
	self assert: deleteTime < 1 seconds