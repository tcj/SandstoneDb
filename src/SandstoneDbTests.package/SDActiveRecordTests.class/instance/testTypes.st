testing
testTypes
	| values |
	values := {nil. true. 1. $d. 'test'}.
	kid buddy: values.
	kid save.
	self flushAndReload.
	self assert: kid refreshed buddy = values