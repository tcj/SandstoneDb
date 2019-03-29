actions
loadClass: aClass atId: anId
	self refresh.
	^ (self db root at: aClass name) at: anId