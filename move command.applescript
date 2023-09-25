on run argv
	tell application "Mail"
		try
			set mailboxName to item 1 of argv
			set theAccount to item 2 of argv
			if selection is {} then error
			set messageList to (selection as list)
			repeat with theMessage in messageList
				-- set theMessage to the first item of (selection as list)
				set theMailbox to mailbox mailboxName of account theAccount
				set mailbox of theMessage to theMailbox
			end repeat
		end try
	end tell
end run