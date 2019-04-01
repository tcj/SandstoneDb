baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			spec
				package: 'SandstoneDb';
				package: 'SandstoneDbTests' with: [ spec requires: 'SandstoneDb' ];
				yourself ].
	spec
		for: #'squeak'
		do: [ 
			spec
				package: 'SandstoneDbSqueak' with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneDbFileDirectoryStore'
					with: [ spec requires: 'SandstoneDb' ];
				yourself ].
	spec
		for: #'pharo'
		do: [ 
			spec
				package: 'SandstoneDbFileSystemStore'
					with: [ spec requires: 'SandstoneDb' ];
				yourself ].
	spec
		for: #'GOODS'
		do: [ 
			spec
				package: 'SandstoneGOODS' with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneGOODSTests' with: [ spec requires: 'SandstoneGOODS' ];
				yourself ].
	spec
		for: #'Fuel'
		do: [ 
			spec
				package: 'SandstoneDbFuel' with: [ spec requires: 'SandstoneDb' ];
				yourself ]