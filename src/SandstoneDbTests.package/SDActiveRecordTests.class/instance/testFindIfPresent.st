testing
testFindIfPresent
	| found |
	found := false.
	kid save.
	self flushAndReload.
	self personClass find: [ :each | each id = kid id ] ifPresent: [:it | found := true ].
	self assert: found