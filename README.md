# Prefect.cfg

The Prefect setup.

## Getting started

```shell
git clone https://github.com/PrefectHQ/prefect.cfg 
cd prefect.cfg
```
Follow the instructions below.

## Scripts

### applications

`sh applications.sh`

Installs the following applications:
- Homebrew (https://brew.sh)
- iTerm2 (https://www.iterm2.com/)
- Google Chrome (https://www.google.com/chrome/)
- 1Password (https://1password.com/)
- VS Code (https://code.visualstudio.com/)
- Slack (https://slack.com/)
- Hammerspoon (https://github.com/Hammerspoon/hammerspoon)

### python

`sh python.sh`

Installs Anaconda and additional Python dependencies, including:
- black (formatter)
- ipdb (debugger)
- mypy (linter)
- pylint (linter)

### macos

`sh macos.sh`

Installs various Mac OS extensions.


### node

`sh node.sh`

Installs Node


## Configurations

### Hammerspoon
[Hammerspoon](https://www.hammerspoon.org/) is a utility for scripting your Mac. The `hammerspoon` directory can be copied to your home folder as `.hammerspoon` (note the leading dot). It contains an `init.lua` configuration for Hammerspoon.

#### Shortcuts for window management

| shortcut | first press | repeated presses |
| -------- | ----------- | ---------------- |
| <kbd>cmd</kbd> <kbd>opt</kbd> <kbd>&leftarrow;</kbd> | moves window to the left third of the screen | cycles through left half and left two-thirds|
| <kbd>cmd</kbd> <kbd>opt</kbd> <kbd>&rightarrow;</kbd> | moves window to the right third of the screen | cycles through right half and right two-thirds|
| <kbd>cmd</kbd> <kbd>opt</kbd> <kbd>&downarrow;</kbd> | moves window to the middle third of the screen | cycles through "middle half" and "middle two-thirds"|
| <kbd>cmd</kbd> <kbd>opt</kbd> <kbd>&uparrow;</kbd> | makes window full-screen | moves window to the middle of the screen |
| <kbd>cmd</kbd> <kbd>ctrl</kbd> <kbd>&downarrow;</kbd> | sends window to next monitor | |

