slide management
deleteSlideAt: anIndex

	| deletedSlide |
	self slideCount = self class minimumSlideCount
		ifTrue: [ self createSlideAfter: anIndex ]. "There should never be zero slides"
	deletedSlide := self slides removeAt: anIndex. 
	deletedSlide abandon.
	^ deletedSlide