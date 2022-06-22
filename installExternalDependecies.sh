#!/bin/bash

echo "---- Pacman install -----------------------"
sudo pacman -Syuq --noconfirm --needed \
  fd \
  lua-language-server \
  neovim \
  npm \
  python-pynvim \
  ripgrep \
  xclip
echo "---- Pacman done --------------------------"

echo "---- Paman install ------------------------"
PACKAGES="\
  ltex-ls-bin
  nvim-packer-git
  "

NOT_INSTALLED_PACKAGES=$(echo "$PACKAGES" | grep -v "$(pamac list -iq)")

pamac build $NOT_INSTALLED_PACKAGES
echo "---- Paman done ---------------------------"

echo "---- npm installing -----------------------"
sudo npm i -g \
  dockerfile-language-server-nodejs \
  bash-language-server \
  vscode-langservers-extracted \
  typescript \
  typescript-language-server \
  @tailwindcss/language-server
echo "---- npm done -----------------------------"

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
