#!/bin/bash
# Generating ssh key and installing vim with my vimrc

echo -e "Please enter your email: "
read email

# gerar ssh-key
ssh-keygen -t ed25519 -C $email
# rodar o ssh-agent 
eval "$(ssh-agent -s)"
# add a chave gerada ao agent
ssh-add ~/.ssh/id_ed25519

sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone git@github.com:ielson/vimconfig.git ~/.vim/


