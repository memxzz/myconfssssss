#!/bin/bash
cd "$(dirname "$(readlink -f "$0")")"
####my cool and essential thingyssss
sudo pacman -S git
sudo pacman -S alacritty
sudo pacman -S yay
sudo pacman -S nano
sudo pacman -S hyprpaper
sudo pacman -S xdg-user-dirs

yay -S sherlock-launcher-bin
sudo pacman -S nwg-look papirus-icon-theme

####folders
xdg-user-dirs-update

####libraries

sudo pacman -S flatpak
sudo pacman -S waybar

#waybar
sudo pacman -S waybar btop network-manager-applet blueman pavucontrol playerctl pamixer
rm -rf ~/.config/waybar
cp -r waybar ~/.config/waybar

#hypr
rm -rf ~/.config/hypr
cp -r hypr ~/.config/hypr

#gtk
rm -rf ~/.config/gtk-3.0
cp -r hypr ~/.config/gtk-3.0
####fonts

##nerd fonts
sudo pacman -S nerd-fonts

####configssss

#terminal
cd ~
git clone https://github.com/AdityaMalik7/alacritty-config.git
cd alacritty-config

mkdir -p ~/.config/alacritty
cp alacritty.toml ~/.config/alacritty/

curl -sS https://starship.rs/install.sh | sh

echo 'eval "$(starship init bash)"' >> ~/.bashrc

starship preset nerd-font-symbols > ~/.config/starship.toml

####apps
sudo pacman -S discord
sudo pacman -S blender
sudo pacman -S nemo
flatpak install flathub app.zen_browser.zen

####end

sudo pacman -Syu
yay -Syu