defaults
defaultBaseDirectory
	"you can override this if you want to force the db somewhere else"
	^ FileLocator imageDirectory / FileLocator image basenameWithoutExtension , 'SandstoneDb'
