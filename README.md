# Crazytan Homebrew Tap

Homebrew casks for Crazytan macOS apps.

## Install TaskMenu

```bash
brew tap crazytan/tap
brew install --cask taskmenu
```

Or install directly:

```bash
brew install --cask crazytan/tap/taskmenu
```

## Available Casks

- `taskmenu` - native macOS menu bar app for Google Tasks

## Maintenance

Run these checks before pushing cask updates:

```bash
brew audit --cask --strict crazytan/tap/taskmenu
brew livecheck --cask crazytan/tap/taskmenu
```
