accessing
port
	^ port ifNil: [self defaultPort]