initialization
setStore: aStore 
	Store ifNotNil: [ Store ensureDown ].
	Store := aStore