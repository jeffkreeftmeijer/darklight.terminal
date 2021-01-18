generate:
	./node_modules/termcolors/bin/termcolors --input json --output terminalapp < darklight.json > darklight.terminal
	plutil -remove BackgroundColor darklight.terminal
	plutil -remove CursorColor darklight.terminal
	plutil -remove SelectionColor darklight.terminal
	plutil -remove TextBoldColor darklight.terminal
	plutil -remove TextColor darklight.terminal
	plutil -remove name darklight.terminal
	plutil -insert ProfileCurrentVersion -float 2.0699999999999998 darklight.terminal
