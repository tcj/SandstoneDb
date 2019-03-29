running
runCase
	self defaultStore class install.
	SDActiveRecord commit: [ super runCase ]