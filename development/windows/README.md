# Windows setup

This install procedure has been tested on Microsoft Windows 10.

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

### Software installs with Chocolatey
```powershell
# Global confirmation
choco feature enable -n allowGlobalConfirmation

# Drivers
choco install geforce-experience

# Git
choco install git

# [Posh git](https://github.com/dahlbyk/posh-git))
## Restart and make sure git is in path before doing:
PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force

## If AllowPrerelease parameter is not recognized, try the above again after doing:
Install-Module PowerShellGet -Scope CurrentUser -Force -AllowClobber

## To load the profile in all sessions
Add-PoshGitToProfile -AllHosts

# [ZLocation](https://github.com/vors/ZLocation)
Install-Module ZLocation -Scope CurrentUser

# Core
choco install microsoft-windows-terminal
choco install dashlane
choco install firefox
choco install googlechrome
choco install totalcommander /LocalUser /ShellExtension
choco install nordvpn
choco install cryptomator
choco install hwmonitor
choco install hdtune

# VS Code
## settings gist: https://gist.github.com/kparkov/19ec6574dc9a55a4fe3607a58b6cf398
choco install vscode

# Utilities
choco install adobe-creative-cloud       # Did not work on last install (2019-10-27)
choco install google-backup-and-sync
choco install sharex
choco install qbittorrent
choco install magicavoxel
choco install notion
choco install microsoft-teams

# Media
choco install sonos-controller
choco install spotify
choco install steam
choco install discord
choco install vlc
choco install plexmediaplayer
choco install plexmediaserver

# Development
choco install nodejs           # Skip if you install VS, which includes this
choco install python
choco install golang

choco install docker-desktop
choco install docker-compose   # Test if available before installing!

## Visual Studio 2017 Community - minimal install
## https://chocolatey.org/packages/VisualStudio2017Community
choco install visualstudio2017community

## Full 2019 professional with all features
choco install visualstudio2019professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive"

## IIS (Internet Information Services)
choco install IIS-WebServerRole IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility IIS-ASPNET --source WindowsFeatures

## [Invoke-MsBuild](https://github.com/deadlydog/Invoke-MsBuild) 
Install-Module -Name Invoke-MsBuild

# Database
choco install sql-server-express               # Consider outdated?
choco install sql-server-management-studio     # Consider outdated?
choco install azure-data-studio

## Fonts
choco install firacode
```

## SMB shares

To create a new SMB share with full rights to everyone, use **an elevated PS prompt**:

```powershell
# https://sid-500.com/2017/06/26/powershell-how-to-create-file-shares/
New-SmbShare -Name Media -Path D:\Public\Media
Grant-SmbShareAccess -Name Media -AccountName Everyone -AccessRight Full -Force
```

To remove the share, use:

```powershell
Remove-SmbShare -Name Media -Force
```

The `-Force` flag is to prevent user confirmation prompts.
