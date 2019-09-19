#!make

SHELL := /bin/bash
MAKEFLAGS += --silent

install:
	which vim > /dev/null || (echo "Please install vim to continue"; exit 1)
	ln -s $(shell pwd)/vim ~/.vim
	ln vimrc ~/.vimrc
	ln vimrc.bundles ~/.vimrc.bundles
	cp vimrc.local ~/.vimrc.local
	cp vimrc.bundles.local ~/.vimrc.bundles.local
	git config --global core.autocrlf input
	mkdir vim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null
	vim -c "PluginInstall!" -c "q" -c "q"
	echo "And you're done! Have fun with your new and improved vim!"

uninstall:
	rm -rf ~/.vim ~/.vimrc ~/.vimrc.bundles ~/.vimrc.local ~/.vimrc.bundles.local
	echo "vim-up is uninstalled, there may be some files that need to be removed manually"
