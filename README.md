# dotfiles

[webpro/dotfiles](https://github.com/webpro/dotfiles)をforkさせていただいた、オレオレdotfilesです。利用は自由ですが、リスクはあなた自身で負いましょう。
macOSをターゲットにしていますが、*nixでも動作するはず…というのは[webpro/dotfiles](https://github.com/webpro/dotfiles)の話なので、@kuronekomichael がカスタムすることで動かなくなるかもしれません!

## パッケージ概要

* Core
  * Bash + [coreutils](https://en.wikipedia.org/wiki/GNU_Core_Utilities) + bash-completion
  * [Homebrew](https://brew.sh) + [homebrew-cask](https://caskroom.github.io)
  * Node.js + npm
  * GNU [sed](https://www.gnu.org/software/sed/), [grep](https://www.gnu.org/software/grep/), [Wget](https://www.gnu.org/software/wget/)
  * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](https://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [gtop](https://github.com/aksakalli/gtop)
  * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](https://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [gtop](https://github.com/aksakalli/gtop)
  * Git + [SourceTree](https://www.sourcetreeapp.com) + [hub](https://hub.github.com)
  * [unar](https://theunarchiver.com/command-line)
  * [rvm](https://rvm.io) (Ruby 2.1), [lunchy](https://github.com/eddiezane/lunchy)
  * Python 2
  * `$EDITOR` and Git editor is [GNU nano](https://www.nano-editor.org)
* Development (Node/JS/JSON): [jq](https://stedolan.github.io/jq), [nodemon](https://nodemon.io), [peco](https://peco.github.io), [superstatic](https://github.com/firebase/superstatic), [underscore-cli](https://github.com/ddopson/underscore-cli)
* Graphics: [ffmpeg](https://www.ffmpeg.org), [gifsicle](https://www.lcdf.org/gifsicle), [imagemagick](https://www.imagemagick.org), [svgo](https://github.com/svg/svgo)
* macOS: [dockutil](https://github.com/kcrawford/dockutil), [Hammerspoon](https://www.hammerspoon.org), [Mackup](https://github.com/lra/mackup), [Quick Look plugins](https://github.com/sindresorhus/quick-look-plugins)
* [macOS apps](https://github.com/kuronekomichael/dotfiles/blob/master/install/brew-cask.sh)

## インストール

ｷﾗｷﾗ初期状態のmacOSにインストールするには、事前準備が必要です

```bash
sudo softwareupdate -i -a
xcode-select --install
```

git、もしくはcurlのどちらでインストールします

### git cloneしてインストール

```bash
git clone https://github.com/kuronekomichael/dotfiles.git ~/.dotfiles
source ~/.dotfiles/install.sh
```

### curlを利用してリモートインストール

あるいはgitを利用せずに、curlを使って `~/.dotfiles` へインストールすることもできます

```bash
bash -c "`curl -fsSL https://raw.github.com/kuronekomichael/dotfiles/master/remote-install.sh`"
```

wgetを使う場合はこちら

```bash
bash -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/kuronekomichael/dotfiles/master/remote-install.sh`"
```

## `dotfiles`コマンド

```
$ dotfiles help
Usage: dotfiles <command>

Commands:
    clean            brew, npm, gem, rvmのキャッシュを削除する
    dock             macOSのDockの設定を反映する
    edit             IDE(Visual Studio Code)とGit(Sourcetree)で、dotfielsを開く
    help             This help message
    macos            macOSのsystem defatulsに設定値を反映する
    test             テストを実行する
    update           macOS, brew, npm, gemのパッケージ/パッケージマネージャーをアップデート
```

## カスタマイズと機能拡張

gitの認証情報など、外部に公開はしたくないカスタム設定は `system/.custom` に置くことができます。
`system/.custom`は`.bash_profile`から自動的に読み込まれます。`.gitignore`に含まれているのでgit管理されません。

別の手段として、個人用のdotfileリポジトリとして`~/.extra`を配置することもできます。

* `~/.extra/runcom/*.sh`が存在していれば、`.bash_profile`から自動的に読み込まれて実行してくれます
* `~/.extra/install.sh`が存在していれば、インストーラー(`install.sh`)が併せて実行してくれます

## その他のリソース

* [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
* [Homebrew](https://brew.sh)
* [homebrew-cask](https://caskroom.github.io) / [usage](https://github.com/phinze/homebrew-cask/blob/master/USAGE.md)
* [Bash prompt](https://wiki.archlinux.org/index.php/Color_Bash_Prompt)
* [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)

## クレジット

Thanks [webpro/dotfiles](https://github.com/webpro/dotfiles)!!
Many thanks to the [dotfiles community](https://dotfiles.github.io).
