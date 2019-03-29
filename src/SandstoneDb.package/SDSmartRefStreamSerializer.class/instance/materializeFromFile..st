actions
materializeFromFile: aFile
	^ SmartRefStream readOnlyFileNamed: aFile do: [ :file | file sandstoneNextAndClose ]