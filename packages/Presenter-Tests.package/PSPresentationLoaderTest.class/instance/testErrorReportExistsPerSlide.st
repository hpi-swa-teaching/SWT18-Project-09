presentation loading tests
testErrorReportExistsPerSlide

	| directory errorReport entries |
	directory := self mockEmptyPresentationDirectory.
	[self loader loadPresentationFromDirectory: directory] valueSupplyingAnswer: true.
	errorReport := self loader slideErrors.
	 
	entries := (directory / self loader slidesDirectoryName) directoryNames asSet.
	entries addAll: (directory / self loader layoutsDirectoryName) directoryNames asSet.
	
	self 
		assert: errorReport keys asSet
		equals: entries
		description: 'The error report should contain an entry for every loaded slide, even if its empty!'