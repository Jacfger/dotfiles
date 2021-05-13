## Install vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

ln -s ~/.config/Code ~/.config/Code\ -\ OSS # Some extension would look for Code - OSS for some reason. Fuck you

## Install vim
sudo apt install neovim
sudo apt install build-essential

## git set default editor
git config --global core.editor "vim"
git config --global user.name "Jacfger"
git config --global user.email "ncfung@ust.hk"
