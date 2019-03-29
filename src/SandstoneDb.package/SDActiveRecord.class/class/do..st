queries smalltalk style
do: aBlock
	"do on a copy in case the do modifies the collection I'm trying to iterate'"
	Store forClass: self do: aBlock