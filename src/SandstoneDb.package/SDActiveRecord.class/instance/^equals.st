comparing
= anObject 
	"asking the object isMemberOf ensures that if it's a proxy that message 
	will be forwarded to the real object.  Checking this condition in reverse
	anObject class, will fail because anObject class will be the ProxyClass"

	^ (anObject isMemberOf: self class) and: [ id = anObject id ]