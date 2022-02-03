# alfred-mail-sorter
 Moves currently selected message in Mail.app to a folder selected via Alfred interface.

## Usage
With a selected message in Mail:

1. Press `⌃M` (default shortcut) or type `sort`
2. Type the name of the folder (or part of it) until you see the desired folder selected
3. Hit return/enter and message will be moved

## How does it work
1. Uses AppleScript to enumerate folder names for the selected account and feed a *Script Filter* on the Alfred Workflow;
2. Selecting the desired folder will feed the next action with the name of such folder;
3. A seccond AppleScript will use the name of the folder to select the corresponding "Move to…" item in menubar.

# Known Issues

## Doesn't work with folders named the same accross different accounts

Will not work for folders in different accounts that share the same name (there's an AppleScript workaround for that move command, but it does not work fine with Gmail accounts, this is why I've preffered this method).

To work around this limitation, I suggest adding a capital letter to the end of the name of the chosen folder, identifying the account. As in:
- Gmail "Later" will be renamed to "Later G"
- Work "Later" will be renamed to "Later W"

This way one can easily surface the correct folder for each account by typing "Later".

# Credits
- Icon from the Noun Project, under the Creative Commons license.
https://thenounproject.com/icon/move-folder-545831/
