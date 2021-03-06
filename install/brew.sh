echo "================================="
echo " 🚀 Install cli tools from brew "
echo "================================="

if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  ack
  anyenv
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
  exa
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
  gnu-sed
  grep
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
  mkvtoolnix
  mplayer
  mysql
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

for app in ${apps[@]}; do
  brew install $app
done

# Initialize anyenv
anyenv install --force-init --skip-existing

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
