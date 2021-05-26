chmod +x ./scripts/*.sh

## Install vscode
./scripts/vscode.sh

## Install fish
./scripts/fish.sh

## Install vim
sudo apt install neovim
git config --global core.editor "vim"

sudo apt install build-essential

## Install spotify
./scripts/spotify.sh

## git set default editor
git config --global user.name "Jacfger"
git config --global user.email "ncfung@ust.hk"

## Install Python and neovim
./scripts/neovim.sh
