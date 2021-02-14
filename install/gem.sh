echo "==============================="
echo " 🚀 Install cli tools from gem "
echo "==============================="

if ! is-macos -o ! is-executable brew; then
  echo "Skipped: gem"
  return
fi

brew install gpg2

\curl -sSL https://get.rvm.io | bash -s stable

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

. ~/.rvm/scripts/rvm

rvm install 2.5
rvm use 2.5 --default

gem install lunchy
gem install pygmentize
