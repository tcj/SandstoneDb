actions
loadClass: aClass atId: anId
	[ 
	| obj name |
	name := (self dirForClass: aClass atId: anId) fullNameFor: anId , '.obj'.
	obj := self class serializer materializeFromFile: name.
	^ obj
		onLoad;
		yourself ] on: Error do: [ :err | SDLoadError signal: 'Loading id=' , anId , '. ' , err messageText ]