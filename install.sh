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
    cp -r .vim/* ~/.vim
    cp -r .vim/.* ~/.vim
    vim -c PluginInstall -c qa!
    vim -c CocInstall coc-clangd coc-json -c qa!
    echo "Done!"
fi

if [ ! -d ~/Sources ]; then
    mkdir -p ~/Sources
fi

if [ ! -x $(which bear) ]; then
    echo "Bear not detected, try installing!"
    git clone https://github.com/rizsotto/Bear.git ~/Sources/Bear
    cd ~/Sources/Bear
    cmake .
    make all check
    sudo make install
    echo "Done!"
fi
