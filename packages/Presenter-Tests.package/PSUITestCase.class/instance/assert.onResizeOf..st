helper functions
assert: aBlock onResizeOf: aMorph

	100 to: 2000 by: 100 do: [ :width |
		100 to: 2000 by: 100 do: [ :height |
			aMorph extent: width@height.
			aMorph fullBounds.
			self assert: aBlock.
		]
	]