baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			spec
				package: 'SandstoneDb';
				package: 'SandstoneDbTests' with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneGOODS' with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneDbTests' with: [ spec requires: 'SandstoneDb' ];
				yourself.
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('SandstoneDb' 'SandstoneDbTests');
				group: 'GOODS' with: #('SandstoneGOODS' 'SandstoneGOODSTests');
				group: 'Fuel' with: #('SandstoneDbFuel');
				yourself ].
	spec
		for: #'squeak'
		do: [ 
			spec
				package: 'SandstoneDbSqueak' with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneDbFileDirectoryStore'
					with: [ spec requires: #('SandstoneDb' 'SandstoneDbTests') ];
				package: 'SandstoneDb'
					with: [ spec includes: 'SandstoneDbFileDirectoryStore' ];
				yourself ].
	spec
		for: #'pharo'
		do: [ 
			spec
				package: 'SandstoneDbFileSystemStore'
					with: [ spec requires: 'SandstoneDb' ];
				package: 'SandstoneDb'
					with: [ spec includes: 'SandstoneDbFileSystemStore' ];
				yourself ]