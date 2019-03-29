testing
testSemaphorSerialization
	mom children: Semaphore new.
	self should: [ mom save ] raise: SDCommitError