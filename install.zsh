#!/usr/bin/env zsh

echo "Installing zsh snippets"

if [[ -e ~/.zshrc ]]; then
    echo
    echo "~/.zshrc already exists"
    mv -v ~/.zshrc ~/old.zshrc
fi

echo

cd zshrc
cp -rv .zshrc zshrc.d ~

echo
echo "Done. Happy zsh!"

