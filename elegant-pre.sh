#!/bin/bash

osrelease=`cat /etc/os-release  | grep NAME | head -1`
export os=${osrelease:6:7}
echo $os

if [ "$os" = "Ubuntu " ]; then
    echo "This is ubuntu os."
    sudo apt-get install vim -y
    sudo apt-get install zsh -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.zshrc ~/.zshrc.bak
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
elif [ "$os" = "SLES   " ]; then
    echo "This is SUSE os."
    zypper install git-core -y
    zypper install vim -y
    zypper install zsh -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.zshrc ~/.zshrc.bak
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
elif [ "$os" = "Red Hat" ]; then
    echo "This is redhat os."
    sudo yum install zsh -y
    sudo yum install vim -y
    sudo yum install git -y
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.zshrc ~/.zshrc.bak
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
else
    echo "ERROR:There is no match"
fi

chsh -s /bin/zsh
exit

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zdharma/history-search-multi-word.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/history-search-multi-word

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="michelebologna"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(\ngit\nzsh-autosuggestions\nhistory-search-multi-word\nzsh-syntax-highlighting\n)/g' ~/.zshrc
git clone -b master https://github.com/LeslieKuo/elegant-zsh.git
cat ~/.zshrc ./alias > ~/.newzshrc
mv ~/.zshrc ~/.zshrcbkp
mv ~/.newzshrc ~/.zshrc

source ~/.zshrc

