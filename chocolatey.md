# Chocolatey

The package manager for Windows. How to get up and running with Chocolatey.

## Install Chocolatey

Go into an elevated PS prompt and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

You should probably open a new shell at this point to make sure that `choco` is available. To update `choco` (and test that it is available), do:

```powershell
choco upgrade chocolatey
```

## Software installs with Chocolatey

```powershell

# Global confirmation
choco feature enable -n allowGlobalConfirmation

# Core
choco install -y googlechrome
choco install -y dashlane
choco install -y totalcommander /LocalUser /ShellExtension

# Utilities
choco install -y dropbox
choco install -y adobereader
choco install -y autohotkey
choco install -y sharex

# Browsers
choco install -y firefox

# Media
choco install -y --ignore-checksums spotify
choco install -y steam
choco install -y discord
choco install -y vlc /Language:en

# Development
choco install -y git.install
choco install -y cmder
choco install -y nodejs.install
choco install -y python
choco install -y golang
choco install -y docker-for-windows

## Docker compose may already be included in Docker for Windows
choco install -y docker-compose

## VS Code
## settings gist: https://gist.github.com/kparkov/19ec6574dc9a55a4fe3607a58b6cf398
choco install -y vscode

## Visual Studio 2017 Community - minimal install
## https://chocolatey.org/packages/VisualStudio2017Community
choco install -y visualstudio2017community

# Database
choco install -y sql-server-express
choco install -y sql-server-management-studio
```