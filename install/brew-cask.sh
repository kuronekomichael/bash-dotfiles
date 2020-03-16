if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap homebrew/cask-versions
brew tap homebrew/cask-cask
brew tap homebrew/cask-fonts

# Install packages

apps=(
  0xed
  alfred
  android-studio
  appcleaner
  bettertouchtool
  charles
  docker
  google-backup-and-sync
  google-chrome
  google-chrome-canary
  google-japanese-ime
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
  yacreader
)

for app in ${apps[@]}; do
    brew cask install $app
done

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
