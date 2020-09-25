#!/bin/bash

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zdharma/history-search-multi-word.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/history-search-multi-word

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="michelebologna"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(\ngit\nzsh-autosuggestions\nhistory-search-multi-word\nzsh-syntax-highlighting\n)/g' ~/.zshrc
git clone -b master https://github.com/LeslieKuo/elegant-zsh.git
cat ~/.zshrc ./elegant-zsh/alias > ~/.newzshrc
mv ~/.zshrc ~/.zshrcbkp
mv ~/.newzshrc ~/.zshrc

source ~/.zshrc