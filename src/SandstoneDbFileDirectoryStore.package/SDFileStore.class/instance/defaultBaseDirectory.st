defaults
defaultBaseDirectory
	"you can override this if you want to force the db somewhere else"
	^ FileDirectory default directoryNamed: 
		(FileDirectory baseNameFor: 
			(FileDirectory localNameFor: 
				SmalltalkImage current imageName)) , '.SandstoneDb'