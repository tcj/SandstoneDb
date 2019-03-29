queries private
lock
	^ lock ifNil: [ lock := Monitor new ]