# MacOS installation

Install xcode.

```bash
xcode-select --install
```

## Software installs

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew tap caskroom/cask
brew upgrade

brew install git
brew install wget

# Node (NVM)
touch ~/.bash_profile && chmod 644 ~/.bash_profile
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

# Docker (https://pilsniak.com/how-to-install-docker-on-mac-os-using-brew/)
brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve

## If it says that docker-machine-xhyve has to run as root:
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# virtualbox

## GUI applications
brew cask install dashlane
brew cask install appcleaner
brew cask install iterm2
brew cask install powershell
brew cask install google-backup-and-sync
brew cask install nordvpn
brew cask install alfred
brew cask install firefox
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install cryptomator
brew cask install spotify
brew cask install adobe-creative-cloud
brew cask install discord
brew cask install qbittorrent
brew cask install plex-media-player
brew cask install virtualbox
brew cask install nightowl
brew cask install notion
brew cask install azure-data-studio
brew cask install microsoft-teams
```