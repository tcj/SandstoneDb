testing
testMarkReferencesCopies
	kid save.
	mom children: { kid }.
	mom save.
	self assert: mom children first == kid