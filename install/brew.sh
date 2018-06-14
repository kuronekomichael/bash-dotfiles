if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  ack
  aria2
  bash-completion2
  bats
  battery
  cocoapods
  composer
  colordiff
  coreutils
  diff-so-fancy
  dockutil
  faac
  fasd
  ffmpeg
  findutils
  flac
  freetype
  gdbm
  gifsicle
  git
  git-extras
  gnu-sed --with-default-names
  grep --with-default-names
  httpie
  hub
  imagemagick
  ios-deploy
  jq
  lame
  libimobiledevice
  libmatroska
  libxml2
  lynx
  mackup
  maven
  mkvtoolnix
  mplayer
  nano
  openssl
  pandoc
  peco
  pipenv
  psgrep
  python
  readline
  rename
  shellcheck
  sqlite
  ssh-copy-id
  the_silver_searcher
  tig
  tree
  unar
  vim
  watch
  wget
  wifi-password
  x264
  xvid
  youtube-dl
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
