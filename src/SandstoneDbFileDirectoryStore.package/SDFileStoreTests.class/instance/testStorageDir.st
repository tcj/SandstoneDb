running
testStorageDir
	"Active records id's must find a proper subdirectory entry in the defined structure"
	| ids legalNames |
	legalNames := (0 to: 9) collect: [ :e | e asString ].
	ids := Set new: 1000.
	1000 timesRepeat: [ ids add: UUID new asString36 ].
	ids add: 'abaoblwgnaydxokccorveamoq'.
	ids do: 
		[ :anId | 
		self assert: (legalNames includes: (store 
					dirForClass: self personClass
					atId: anId) localName) ]