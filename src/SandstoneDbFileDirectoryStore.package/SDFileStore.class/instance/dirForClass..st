queries
dirForClass: aClass 
	"compute the path of superclasses all the way up to ActiveRecord, storing 
	subclass records as a subdirectory of the superclasses directory 
	allows ActiveRecord to deal with inheritance"
	| parentClass lineage |
	aClass == SDActiveRecord ifTrue: 
		[ Error signal: 'ActiveRecord itself is abstract, you must only  
 store subclasses' ].
	lineage := OrderedCollection with: aClass.
	parentClass := aClass superclass.
	[ parentClass == SDActiveRecord ] whileFalse: 
		[ lineage addFirst: parentClass.
		parentClass := parentClass superclass ].
	^ lineage 
		inject: self defaultBaseDirectory
		into: [ :dir :each | dir directoryNamed: each name ]