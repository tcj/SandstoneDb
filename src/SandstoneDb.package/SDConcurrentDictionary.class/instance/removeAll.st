removing
removeAll
	^ lock
		critical: [self keys copy
				do: [:e | self removeKey: e]]