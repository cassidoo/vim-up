#!/usr/bin/env bash

which vim > /dev/null

if [ $? -ne 0 ]; then
    echo "Please install vim to continue"
    exit 1
fi


ln -s $(pwd)/vim ~/.vim
ln vimrc ~/.vimrc
ln vimrc.bundles ~/.vimrc.bundles

cp vimrc.local ~/.vimrc.local
cp vimrc.bundles.local ~/.vimrc.bundles.local

git config --global core.autocrlf input
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null

$(which vim) -c "PluginInstall!" -c "q" -c "q"

echo "And you're done! Have fun with your new and improved vim!"