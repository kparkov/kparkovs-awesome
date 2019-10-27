# Chocolatey

The package manager for Windows. How to get up and running with Chocolatey.

**A full run has not been tested. Run step by step on new install.**

## Install Chocolatey

Go into an elevated PS prompt and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

It might be a good idea to modify the general execution policy to allow for execution of scripts.

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

You should probably open a new shell at this point to make sure that `choco` is available. To update `choco` (and test that it is available), do:

```powershell
choco upgrade chocolatey
```

## Software installs with Chocolatey

```powershell

# Global confirmation
choco feature enable -n allowGlobalConfirmation

# Drivers
choco install geforce-experience

# Core
choco install microsoft-windows-terminal
choco install dashlane
choco install firefox
choco install googlechrome
choco install git
choco install totalcommander /LocalUser /ShellExtension


# VS Code
## settings gist: https://gist.github.com/kparkov/19ec6574dc9a55a4fe3607a58b6cf398
choco install vscode

# Utilities
choco install adobe-creative-cloud
choco install google-backup-and-sync
choco install sharex
choco install qbittorrent
choco install magicavoxel

# Media
choco install spotify
choco install steam
choco install discord
choco install vlc
choco install plexmediaplayer

# Development

choco install cmder
choco install nodejs.install
choco install python
choco install golang
choco install docker-desktop

## Docker compose may already be included in Docker for Windows
choco install docker-compose

## Visual Studio 2017 Community - minimal install
## https://chocolatey.org/packages/VisualStudio2017Community
choco install visualstudio2017community

choco install visualstudio2019professional
choco install visualstudio2019professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive"

## IIS (Internet Information Services)
choco install IIS-WebServerRole IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility IIS-ASPNET --source WindowsFeatures

# Database
choco install sql-server-express
choco install sql-server-management-studio
choco install azure-data-studio

## Fonts
choco install firacode
```
