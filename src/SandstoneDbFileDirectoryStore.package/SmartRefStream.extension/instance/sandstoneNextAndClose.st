*sandstonedbfiledirectorystore
sandstoneNextAndClose
	"Speedy way to grab one object. Only use when we are inside an object
	binary file.I created my own version of nextAndClose to get rid of the 
	interactive stuff the real one tries to do.  If I fail, then I fail, so be it"
	| obj |
	byteStream peek = ReferenceStream versionCode ifFalse: [ SDLoadError signal: 'old object file' ].
	obj := self next.
	self close.
	^ obj