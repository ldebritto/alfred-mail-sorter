on run argv
	set theMailbox to item 1 of argv
	activate application "Mail"
	tell application "System Events"
		tell process "Mail"
			click menu item theMailbox  of menu 1 of menu item 18  of menu 1 of menu bar item 7  of menu bar 1
		end tell
	end tell
end run
