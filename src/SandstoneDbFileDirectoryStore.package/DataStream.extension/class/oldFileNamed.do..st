*sandstonedbfiledirectorystore
oldFileNamed: aName do: aBlock 
	| file |
	file := self oldFileNamed: aName.
	^ file 
		ifNil: [ nil ]
		ifNotNil: [ [ aBlock value: file ] ensure: [ file close ] ]