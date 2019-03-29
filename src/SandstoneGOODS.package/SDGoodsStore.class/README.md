A SDGoodsStore is a store backend for the Sandstone DB.

You can register at it by executing

ActiveRecord setStore: SDGoodsStore new.

You can start up the GOODS server locally by running

SDGoodsStore createDb

Be sure that GOODS is installed: http://www.garret.ru/goods.html.

Instance Variables
	db:		a KKDatabase
	flushCounter:		an Integer
	inTransaction:		a Boolean.

db
	- The connection to the GOODS database

flushCounter
	- Counts the number of flushes since the last flushAll (GOODS needs a flushAll regularly or it gets sluggish)

inTransaction
	- indicates whether there is a currently active transaction
