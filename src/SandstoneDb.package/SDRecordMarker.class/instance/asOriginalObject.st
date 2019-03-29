converting
asOriginalObject
	"this needs to call cachedLoadFrom not findById in order to allow cycles in 
	the serialized graph this allows an object that references an unloaded object 
	during the loadAll to force it's load instead of failing"
	| origClass |
	origClass := Smalltalk at: className.
	"I'm checking inheritsFrom: here so that any classes that used to be 
	activeRecords but aren't anymore that had serialized instances are 
	caught and return nil when resolved rather than blow up.  This happens
	often during development when you're changing your model a lot"
	^ (origClass inheritsFrom: SDActiveRecord) 
		ifTrue: [ SDActiveRecord store cachedLoadOfClass: (Smalltalk at: className)  from: id ]
		ifFalse: [ nil ]