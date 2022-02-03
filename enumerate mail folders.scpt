use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

set mailboxList to {}

tell application "Mail"
	
	try
		if selection is {} then error
		set theMessage to the first item of (selection as list)
		set currentMailbox to mailbox of theMessage
		set theAccount to the account of currentMailbox
	end try
	
	set allAccountMailboxes to every mailbox of theAccount
	
	repeat with eachMailbox in allAccountMailboxes
		
		set thisReccord to {uid:(name of eachMailbox) & "-" & (name of theAccount), title:(name of eachMailbox), subtitle:(name of theAccount), arg:[(name of eachMailbox), (name of theAccount)], valid:true, match:(name of eachMailbox)}
		set the end of mailboxList to thisReccord
		
	end repeat
	
	set |items| to {|items|:mailboxList}
end tell

tell application "JSON Helper"
	set mailboxList to make JSON from ¬
		|items| with pretty printing
end tell
