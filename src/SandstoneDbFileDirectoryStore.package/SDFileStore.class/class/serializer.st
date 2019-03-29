accessing
serializer
	^ serializer ifNil: [ serializer := SDSmartRefStreamSerializer new ]