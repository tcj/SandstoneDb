*sandstonedbfiledirectorystore
withSubdirectoriesDo: aBlock 
	self directoryNames do: [ :n | aBlock value: (self directoryNamed: n) ]