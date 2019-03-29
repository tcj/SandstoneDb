delegated queries
forClass: aClass do: aBlock
	aClass withAllSubclasses do: [ :class | (cache at: class) do: aBlock ]