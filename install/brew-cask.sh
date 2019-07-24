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
  docker
  dropbox
  font-fira-code
  gitter
  google-chrome-canary
  google-japanese-ime
  hammerspoon
  hyper
  intellij-idea-ce
  iterm2
  kaleidoscope
  licecap
  pritunl
  pycharm-ce
  runjs
  skitch
  slack
  sourcetree
  the-unarchiver
  visual-studio-code
  vlc
)
# Pending:
# - google-chrome
# Error:
# - virtualbox
# - virtualbox-extension-pack
# R.I.P.
# - cooviewer
# - java8
# Install from appstore
# - 1password

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
