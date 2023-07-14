#!/bin/bash
echo "Installing Xcode ..."
xcode-select --install

echo "Installing HomeBrew ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install Brewfile ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./Brewfile --verbose

echo "Installing asdf plguin ..."
asdf.sh

echo "link .zshrc"
stow -v -d ~/dotfiles -t $HOME zsh git asdf

exec $SHELL -l
