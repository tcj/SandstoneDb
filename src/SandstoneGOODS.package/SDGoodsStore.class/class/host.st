accessing
host
	^ host ifNil: [ self defaultHost ]