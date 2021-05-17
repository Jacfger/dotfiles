#!/usr/bin/env fish
# Directly copied from Anshuman lmao

sudo apt install input-utils evtest
sudo wget https://github.com/kmonad/kmonad/releases/download/0.4.1/kmonad-0.4.1-linux -O /usr/bin/kmonad
chmod +x /usr/bin/kmonad

# Remeber to change the capslockmod.kbd. If it is in-built keybaord of a laptop, probably check AT device or something typing this command
# cat /proc/bus/input/devices
# find the corresponding line in the capslockmod.kbd
# input  (device-file "/dev/input/event<device number>") ;; TODO: use by-id?


sudo groupadd uinput
sudo usermod -aG uinput $USER
sudo usermod -aG input $USER
sudo modprobe uinput
sudo touch /etc/udev/rules.d/uinput.rules
echo 'KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/uinput.rules
  
sudo cp ./kmonad.service /etc/systemd/system/kmonad.service
sudo systemctl enable kmonad.service
