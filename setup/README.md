# Setup <!-- omit in toc -->

- [Fresh machine setup](#fresh-machine-setup)
  - [MacOS](#macos)
  - [Microsoft Windows 10](#microsoft-windows-10)
- [Applications](#applications)
  - [Browser](#browser)
    - [Firefox](#firefox)
    - [Google Chrome](#google-chrome)
  - [Development](#development)
    - [Azure Data Studio](#azure-data-studio)
    - [Docker](#docker)
    - [Dotnet](#dotnet)
    - [Git](#git)
    - [Golang](#golang)
    - [Internet Information Services (IIS)](#internet-information-services-iis)
    - [Invoke-MSBuild](#invoke-msbuild)
    - [Lepton](#lepton)
    - [Node](#node)
    - [Postman](#postman)
    - [Python](#python)
    - [Virtualbox](#virtualbox)
    - [Visual Studio](#visual-studio)
    - [VSCode](#vscode)
  - [Fonts](#fonts)
    - [Fira Code](#fira-code)
  - [Graphics, office and comms](#graphics-office-and-comms)
    - [Adobe Creative Cloud](#adobe-creative-cloud)
    - [Journey](#journey)
    - [Magicavoxel](#magicavoxel)
    - [Microsoft Office 365](#microsoft-office-365)
    - [Microsoft Teams](#microsoft-teams)
    - [Notion](#notion)
    - [Signal](#signal)
    - [Telegram](#telegram)
  - [Media and Games](#media-and-games)
    - [Discord](#discord)
    - [Plex](#plex)
    - [Sonos controller](#sonos-controller)
    - [Spotify](#spotify)
    - [Steam](#steam)
    - [VLC](#vlc)
  - [Security and anonymity](#security-and-anonymity)
    - [Cryptomator](#cryptomator)
    - [Dashlane](#dashlane)
    - [NordVPN](#nordvpn)
  - [Utilities](#utilities)
    - [Alfred](#alfred)
    - [Google Backup and Sync](#google-backup-and-sync)
    - [Nightowl](#nightowl)
    - [Qbittorrent](#qbittorrent)
    - [Sharex](#sharex)
    - [TeamViewer](#teamviewer)
    - [Total commander](#total-commander)
    - [Windirstat](#windirstat)

## Fresh machine setup

### MacOS

Install xcode.

```bash
xcode-select --install
```

Install Homebrew.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap caskroom/cask
brew upgrade

brew install git
brew install watch
brew install wget

brew cask install iterm2
```

Continue with more specific software installs.

### Microsoft Windows 10

Setup chocolatey.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

It might be a good idea to modify the general execution policy to allow for execution of scripts.

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

To update `choco` (and test that it is available), do:

```powershell
choco upgrade chocolatey
```

If it is not available, re-open the shell and re-run the above command.

```powershell
# Global confirmation
choco feature enable -n allowGlobalConfirmation

# Geforce drivers
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

choco install microsoft-windows-terminal
```

Continue with more specific software installs.

## Applications

### Browser

#### Firefox

```ps
choco install firefox
brew cask install firefox
```

#### Google Chrome

```ps
choco install googlechrome
brew cask install google-chrome
```

### Development

#### Azure Data Studio

```
choco install azure-data-studio
brew cask install azure-data-studio
```

#### Docker

```
choco install docker-desktop
brew cask install docker
```

#### Dotnet

If Visual Studio is installed on Windows, the `dotnet` executable and SDK will also be installed.

```bash
brew cask install docker
```

The following method can be used to install a specific version of the SDK. Start by downloading the script to the current directory.

```ps
Invoke-WebRequest 'https://dot.net/v1/dotnet-install.ps1' -OutFile 'dotnet-install.ps1'
```

Use the script to download and install a specific version of the framework.

```ps
./dotnet-install.ps1 -Version '2.1.700'
```

#### Git

```ps
choco install git
brew install git
```

#### Golang

```ps
choco install golang
brew install golang
```

See [a detailed guide for setting golang up on MacOS](https://medium.com/@jimkang/install-go-on-mac-with-homebrew-5fa421fc55f5).

#### Internet Information Services (IIS)

Windows only.

```powershell
## IIS (Internet Information Services)
choco install IIS-WebServerRole IIS-ISAPIFilter IIS-ISAPIExtensions IIS-NetFxExtensibility IIS-ASPNET --source WindowsFeatures
```

#### Invoke-MSBuild

https://github.com/deadlydog/Invoke-MsBuild

For building older (not `dotnet` based) .NET projects and solutions from the command line.

```powershell
Install-Module -Name Invoke-MsBuild
```

#### Lepton

Github Gist based snippet manager.

```ps
choco install lepton
brew cask install lepton
```

#### Node

Please note that the Visual Studio install will also install a pretty recent version of Node.

```powershell
choco install nodejs
```

On MacOS, install NVM to control Node versions.

```bash
touch ~/.bash_profile && chmod 644 ~/.bash_profile
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
```

#### Postman

REST request composer and library.

```ps
choco install postman
brew cask install postman
```

#### Python

Python comes preinstalled on MacOS (albeit in an older version, not fit for development).

```ps
choco install python
```

![](https://imgs.xkcd.com/comics/python_environment.png)

#### Virtualbox

```
choco install virtualbox
brew cask install virtualbox
```

#### Visual Studio

Windows only.

```powershell
## Visual Studio 2017 Community - minimal install
## https://chocolatey.org/packages/VisualStudio2017Community
choco install visualstudio2017community

## Full 2019 professional with all features
choco install visualstudio2019professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive"
```

#### VSCode

```ps
choco install vscode
brew cask install visual-studio-code
```

### Fonts

#### Fira Code

```
choco install firacode
brew cask install font-fira-code
```

### Graphics, office and comms

#### Adobe Creative Cloud

_Note that this did not work on last try in Chocolatey (2019-10-27) (checksum error)._

```ps
choco install adobe-creative-cloud
brew cask install adobe-creative-cloud
```

#### Journey

https://journey.cloud/

This app exists for Windows, but not on Chocolatey.

```bash
brew cask install journey
```

#### Magicavoxel

Windows only.

```ps
choco install magicavoxel
```

#### Microsoft Office 365

**Business** edition.

Note that the Homebrew version has not been tested.

```ps
choco install office365business
brew cask install microsoft-office  # Untested!
```

#### Microsoft Teams

```ps
choco install microsoft-teams
brew cask install microsoft-teams
```

#### Notion

https://notion.so/

A kind of personal wiki.

```ps
choco install notion
brew cask install notion
```
#### Signal

```ps
choco install signal
brew cask install signal
```

#### Telegram

```ps
choco install telegram
brew cask install telegram
```

### Media and Games

#### Discord

```ps
choco install discord
brew cask install discord
```

#### Plex

https://plex.tv/

```ps
# Server
choco install plexmediaserver
brew cask install plex-media-server

# Client
choco install plexmediaplayer
brew cask install plex-media-player
```

#### Sonos controller

```ps
choco install sonos-controller
brew cask install sonos
```

#### Spotify

```ps
choco install spotify
brew cask install spotify
```

#### Steam

```ps
choco install steam
brew cask install steam
```

#### VLC

Video player.

```ps
choco install vlc
brew cask install vlc # Untested!
```

### Security and anonymity

#### Cryptomator

```ps
choco install cryptomator
brew cask install cryptomator
```

#### Dashlane

Password manager.

```ps
choco install dashlane
brew cask install dashlane
```

#### NordVPN

https://nordvpn.com

Great and easy VPN solution.

```ps
choco install nordvpn
brew cask install nordvpn
```

### Utilities

#### Alfred

MacOS only.

```bash
brew cask install alfred
```

#### Google Backup and Sync

```ps
choco install google-backup-and-sync
brew cask install google-backup-and-sync
```

#### Nightowl

```bash
brew cask install nightowl
```

#### Qbittorrent

```ps
choco install qbittorrent
brew cask install qbittorrent
```

#### Sharex

Windows only.

```powershell
choco install sharex
```

#### TeamViewer

https://www.teamviewer.com/

```ps
choco install teamviewer
brew cask install teamviewer
```

#### Total commander

Windows only.

```powershell
choco install totalcommander /LocalUser /ShellExtension
```

#### Windirstat

Windows only.

```ps
choco install windirstat
```