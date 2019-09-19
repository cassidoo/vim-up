#!/usr/bin/env bash

function install() {

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

}

function uninstall() {
    rm -rf ~/.vim ~/.vimrc ~/.vimrc.bundles ~/.vimrc.local ~/.vimrc.bundles.local
    echo "vim-up is uninstalled, there may be some files that need to be removed manually"
}

if [ $1 == "install" ]; then
    install
elif [ $1 == "uninstall" ]; then
    uninstall
else
    install
fi
