# Prefect.cfg

The Prefect setup.

## Getting started

```shell
git clone https://github.com/PrefectHQ/prefect.cfg 
cd prefect.cfg
```

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
The `hammerspoon` directory can be copied to your home folder as `.hammerspoon` (note the leading dot). It contains an `init.lua` configuration for Hammerspoon.
