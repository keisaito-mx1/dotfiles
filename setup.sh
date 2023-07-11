#!/bin/bash
echo "Xcodeをインストールします..."
xcode-select --install

echo "homebrewをインストールします..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew doctorを実行します..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor

echo "brew update..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose

echo "brew upgrade..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

echo "brew install Brewfile"
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose

echo "brew cleanup..."
which brew >/dev/null 2>&1 && brew cleanup --verbose

echo "installing asdf plguin"
./_asdf.sh

echo "link .zshrc"
stow ag zsh -t ~/

exec $SHELL -l
