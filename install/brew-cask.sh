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
  google-chrome
  google-chrome-canary
  google-japanese-ime
  hammerspoon
  intellij-idea-ce
  iterm2
  karabiner-elements
  licecap
  postman
  pritunl
  pycharm-ce
  runjs
  skitch
  slack
  the-unarchiver
  visual-studio-code
  vlc
  workplace-chat
)
# Pending:
# - 
# Error:
# - virtualbox
# - virtualbox-extension-pack
# R.I.P.
# - cooviewer
# - java8
# Install from appstore
# - 1password
# - mini calendar
# - affinity designer
# - kindle
# - keynote
# - 

#brew cask install "${apps[@]}"
for app in ${apps[@]}; do
    brew cask install $app
done

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
