if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  0xed
  alfred
  android-studio
  appcleaner
  bettertouchtool
  charles
  cooviewer
  docker
  dropbox
  font-fira-code
  gitter
  google-chrome
  google-chrome-canary
  google-japanese-ime
  hammerspoon
  intellij-idea-ce
  iterm2
  kaleidoscope
  licecap
  pycharm-ce
  skitch
  slack
  sourcetree
  the-unarchiver
  virtualbox
  virtualbox-extension-pack
  visual-studio-code
  vlc
)
# Install from appstore
# - 1password

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
