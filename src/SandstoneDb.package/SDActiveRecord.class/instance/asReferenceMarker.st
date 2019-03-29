converting
asReferenceMarker
	isNew
		ifTrue: [ 
			"You may reach this point several times before you get the intended use of this framework. This is 
		expected **by design** to make atomic saves really small and consistent. Commits of active records
		which have other active records as parts (at any depth) are restricted intentionally. They are only 
		allowed when all its sub active records are previously commited.  
		
		Only the programmer knows the proper logical commit order for his data! This is not a relational database
		or an object database, its a filesystem database meant only to make an image crash proof and files
		aren't transactional, if you absolutely need several objects to be atomically saved, then you should make 
		them all part of a single aggregate cluster, all of your objects should not be active records, only your aggregate 
		roots are active records.  
		
		For example, an Order would be an ActiveRecord while its LineItem's would simply inherit from Object.  The
		Order and all its line items would be atomically saved as a single file by Order id.  You could not query for
		a line item directly to update it, you would query for the order, its aggregate root, do your work, and 
		commit the order.  An aggregate root is the natural query and transactional boundry for the domain.
		See Eric Evans Domain Driven Design for more information about this way of thinking.
		
		Do not try to rig your objects up to cascade save, to do so is to be missing the point of this 
		framework: Simplicity. This is not an OODB where you call commit once and you hope everything
		magically saves correctly.  One record should not be saving another.  Saves are something best done
		in your controller methods explicitly.  Save your new objects first, then make one reference the other, then
		save the modified one again. This pattern is simple and it works without magic that will confuse you and it 
		will force you to confront failure scenarios where one record saves successfully but the other doesn't.  Trying 
		to hide this behind cascading saves only hides from the programmer the fact that each save is atomic but multiple 
		saves are not."
			SDCommitError
				signal:
					'An object is being saved while referencing an unsaved record of type ' , self class name
						, '.  You must save that record first!' ].
	^ (SDRecordMarker new)
		id: id;
		className: self class name;
		yourself