#!/bin/bash

if [[ -d ~/.vim/bundle/Vundle.vim ]]; then
  echo "Vundle found"
else
  echo "Getting vundle..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo "Installing vundle done!"
fi

read -p "Do you want to config vim with coc?(Y|n): " choice
if [[ $choice == 'Y' || $choice == 'y' || $choice == '' ]]; then
  cat .vimrc-coc > ~/.vimrc
else
  cat .vimrc > ~/.vimrc
fi
echo ".vimrc file configured"

read -p "Do you want to delete my-config directory?(Y|n): " choice
if [[ $choice == 'Y' || $choice == 'y' || $choice == '' ]]; then
  rm -rf ../my-config
  echo "Direcrory deleted"
fi

echo "Done!"
