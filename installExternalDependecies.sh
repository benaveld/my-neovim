#!/bin/bash

echo "---- Pacman install -----------------------"
sudo pacman -Syu --needed \
  ripgrep \
  fd \
  python-pynvim \
  lua-language-server \
  npm \
  xclip
echo "---- Pacman done --------------------------"

sudo pamac build \
  nvim-packer-git
echo "---- Paman done ---------------------------"

echo "---- npm installing -----------------------"
sudo npm i --location=global \
  dockerfile-language-server-nodejs \
  bash-language-server \
  vscode-langservers-extracted \
  typescript \
  typescript-language-server \
  @tailwindcss/language-server
echo "---- npm done -----------------------------"
