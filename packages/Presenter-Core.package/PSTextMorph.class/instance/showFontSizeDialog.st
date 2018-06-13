styling
showFontSizeDialog

	| newSize |
	newSize := UIManager default 
		request: 'Please enter new text size' 
		initialAnswer: self selectionFontSize printString.
	[self selectionFontSize: newSize asNumber]
		on: Error 
		do: [UIManager inform: 'Not a valid number']