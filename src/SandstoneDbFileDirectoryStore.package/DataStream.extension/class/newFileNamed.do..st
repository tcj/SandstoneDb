*sandstonedbfiledirectorystore
newFileNamed: aName do: aBlock 
	| file |
	file := self newFileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]