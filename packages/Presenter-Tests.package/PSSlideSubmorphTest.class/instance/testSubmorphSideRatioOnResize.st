submorph tests
testSubmorphSideRatioOnResize

	| oldRatio |
	oldRatio := self morph extent y / self morph extent x.
	self assert: [self does: self morph answerSideRatio: oldRatio]