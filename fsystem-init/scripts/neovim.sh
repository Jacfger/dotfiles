#!/usr/bin/bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
rm -rf ~/.config/nvim/
