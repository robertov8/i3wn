#!/bin/bash

#########################################################
## Programs (apt-get)
#########################################################

# Editor
sudo apt install vim -y

# Wallpaper
sudo apt install feh -y

# Resize monitor
sudo apt install arandr -y

# Install xbacklight - controler brighness
sudo apt install xbacklight -y

# Menu
sudo apt install rofi -y

# Bar icons
 sudo apt install i3blocks -y

# Control Volumes
sudo apt install pavucontrol -y

# Sensors temperature
sudo apt install lm-sensors -y

# Nitrogen - Set wallpaper
sudo apt install nitrogen -y

# Terminal Zsh
sudo apt install zsh -y

# App - The change Themes and Fonts
sudo apt install lxappearance -y

# Apt-get
sudo apt-get install aptitude -y

# ClassicMenu Indicator
sudo apt-get install classicmenu-indicator -y

#########################################################
## Programs (ppas)
#########################################################

# Infinality for better font rendering in Linux
# http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt update
sudo apt upgrade
sudo apt install fontconfig-infinality -y

# Pomodoro
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get update
sudo apt-get install pomodoro-indicator

## Material Design
# ADAPTA THEME
sudo add-apt-repository ppa:tista/adapta -y
sudo apt-get update
sudo apt install adapta-gtk-theme -y
sudo apt install adapta-backgrounds -y
# Icon Theme
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
sudo apt-get install paper-cursor-theme

# Caffeine indicator
sudo add-apt-repository ppa:caffeine-developers/ppa
sudo apt-get update
sudo apt-get install caffeine


#########################################################
## Programs (manual)
#########################################################

# Config Zshrc
curl -L http://install.ohmyz.sh | sh
rm -f ~/.zshrc
ln -s ~/i3/zsh/.zshrc ~/.zshrc
chsh -s /bin/zsh
# Config
rm ~/.config/i3/config
ln -s ~/i3/config ~/.config/i3/config

# Resources file
mv ~/.Xresources ~/.Xresources.bk
cp .Xresources ~/.
xrdb ~/.Xresources


## i3blocks - contrib
git clone https://github.com/vivien/i3blocks-contrib.git ~/i3/apps/i3blocks-contrib

# apt-upgrades
sudo cp ~/i3/scripts/80i3blocks /etc/apt/apt.conf.d/80i3blocks
sudo chown root:root /etc/apt/apt.conf.d/80i3blocks
sudo chmod 644 /etc/apt/apt.conf.d/80i3blocks

# Default
mkdir -p ~/.fonts

# Icons Fonts
wget https://github.com/FortAwesome/Font-Awesome/earchive/master.zip
unzip master.zip
mv -f Font-Awesome-master/fonts/fontawesome-webfont.ttf ~/.fonts/.
rm -rf Font-Awesome-master/
rm master.zip

# Fons "YosemiteSanFranciscoFont"
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip master.zip
mv -f YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/
rm -rf YosemiteSanFranciscoFont-master/
rm master.zip

# Icons weather
cp fonts/weather/artill_clean_icons.otf ~/.fonts/.

# App - The change Themes and Fonts
rm ~/.gtkrc-2.0
rm ~/.config/gtk-3.0/settings.ini
ln -s ~/i3/fonts/.gtkrc-2.0 ~/.
ln -s ~/i3/fonts/settings.ini ~/.config/gtk-3.0/.

# Set Style Fonts
sudo bash /etc/fonts/infinality/infctl.sh setstyle


# Prezto — Instantly Awesome Zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cp ~/i3/zprezto/.zpreztorc ~/.zprezto/runcoms/.
chsh -s /bin/zsh

#########################################################
## Programs (download)
#########################################################

# Install controller playerctl
echo "# Install controller playerctl (Media Sound)"
echo "https://github.com/acrisci/playerctl/releases"
read