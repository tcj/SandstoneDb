running
setUp
	store := self defaultStore.
	SDActiveRecord setStore: store.
	"only want to warm up test models, not anything else that might be in this image"
	SDFooObject warmUp.
	self personClass withAllSubclasses do: [ :each | each warmUp ].
	
	mom := self personClass testPerson.
	kid := self personClass testPerson.
