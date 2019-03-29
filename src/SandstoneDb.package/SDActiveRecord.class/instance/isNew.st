testing
isNew
	"Only answers true before an objects first save."
	^ isNew ifNil: [ isNew := true ]