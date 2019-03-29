*sandstonedbfiledirectorystore
fileNamed: aName do: aBlock 
	| file |
	file := self fileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]