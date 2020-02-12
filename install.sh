#!/bin/bash
echo "Installing vimrc ... "
if [ -f ~/.vimrc ] || [ -d ~/.vim ]; then
    echo "Found installed vim configuration files" 
    echo -n "Do you want to clean them before installing?(Y/n)"
    read choose
fi

if [ ${#choose} == 0 ]; then
    choose="Y"
fi 

if [ $choose == "Y" ] || [ $choose == "y" ] || [ $choose == "yes" ]; then
    echo -n "Removing vim configuration files ...";
    rm -f ~/.vimrc
    rm -rf ~/.vim
    echo "OK"
fi

if [ -x $(which git) ]; then
    echo "Detected installed git in " "$(which git)"
    mkdir -p ~/.vim
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    cp .vimrc ~/.vimrc
    cp -nr .vim/* ~/.vim
    echo "Done!"
fi
