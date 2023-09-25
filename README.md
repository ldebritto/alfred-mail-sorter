# alfred-mail-sorter
 Moves currently selected message in Mail.app to a folder selected via Alfred interface.

## Pre-requisites
Requires "JSON Helper", from [Mousedown software](https://www.mousedown.net/software/JSONHelper.html), [available on Mac App Store](https://apps.apple.com/br/app/json-helper-for-applescript/id453114608?mt=12) for free.

## Usage
With a selected message in Mail:

1. Press `⌃M` (default shortcut) or invoke Alfred and type `sort`
2. Type the name of the folder (or part of it) until you see the desired folder selected
3. Hit return/enter and message will be moved

## How does it work
1. Uses AppleScript to enumerate folder names for the selected account and feed a *Script Filter* on the Alfred Workflow;
2. Selecting the desired folder will feed the next action with the name of such folder and the name of its account;
3. A seccond AppleScript will use this info to issue a move command to each of the selected messages.

# Known Issues

## Does not work with Gmail accounts
For some reason I suspect is related do the way Mail handles Gmail's proprietary protocol, I guess the move command is not properly held.

Previously, I used a move commant based on a System Events requisition to click on the corresponding "Move to…" command. Gmail worked fine this way. That, however, needed folders to have different names on each account and, also, will require retooling yearly (every time macOS updates), since the position of the menus could change. Different languages were also a con… (see [Issue #1](https://github.com/ldebritto/alfred-mail-sorter/issues/1))

Current approach does work properly with Exchange and iCloud accounts. Others may work as well.

# Credits
- Icon from the Noun Project, under the Creative Commons license.
https://thenounproject.com/icon/move-folder-545831/
