#!/bin/bash

rm -rf ~/.oh-my-zsh
if [ "$os" = "Ubuntu " ]; then
    echo "This is ubuntu os."
    sudo apt-get install vim -y
    sudo apt-get install zsh -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
elif [ "$os" = "SLES   " ]; then
    echo "This is SUSE os."
    zypper install git-core -y
    zypper install vim -y
    zypper install zsh -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
elif [ "$os" = "Red Hat" ]; then
    echo "This is redhat os."
    sudo yum install zsh -y
    sudo yum install vim -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.zshrc ~/.zshrc.bak
else
    echo "ERROR:There is no match"
fi

chsh -s /bin/zsh

zsh

