#!/bin/bash
echo "Installing Xcode ..."
xcode-select --install

echo "Installing HomeBrew ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install Brewfile ..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./Brewfile --verbose

echo "link dotfiles"
sh stow.sh

exec $SHELL -l
