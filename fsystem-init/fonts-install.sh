wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
sudo mv ./ttf /usr/share/fonts
fc-cache -f -v
sudo rm -rf ./ttf
sudo rm Hack-v3.003-ttf.zip

