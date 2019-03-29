testing
testClassSerialization
	mom children: self womanClass .
	self should: [ mom save ] raise: SDCommitError