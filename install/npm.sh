echo "================================="
echo " 🚀 Install cli tools from npmjs "
echo "================================="

if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install nvm

export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`
set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

. "${DOTFILES_DIR}/system/.nvm"
nvm install 12
nvm alias default 12

# Globally install with npm

packages=(
  bit-bin
  create-react-app
  gatsby-cli
  get-port-cli
  git-open
  gtop
  historie
  nodemon
  npm
  release-it
  spot
  superstatic
  svgo
  tldr
  ts-node
  typescript
  underscore-cli
  yarn
)

for packages in ${packages[@]}; do
  npm install -g $packages
done
