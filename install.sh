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
sudo apt install compton -y

# Bar icons
 sudo apt install i3blocks -y

# Control Volumes
sudo apt install pavucontrol -y

# Sensors temperature
sudo apt install lm-sensors -y

# Nitrogen - Set wallpaper
sudo apt install nitrogen -y

# File manager
sudo apt install thunar && thunar-dropbox-plugin -y

# Terminal Zsh
sudo apt install zsh -y

# App - The change Themes and Fonts
sudo apt install lxappearance -y

# Apt-get
sudo apt-get install aptitude -y

#########################################################
## Programs (ppas)
#########################################################

# Infinality for better font rendering in Linux
# http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt update
sudo apt upgrade
sudo apt install fontconfig-infinality -y

# Icons Theme
sudo add-apt-repository ppa:moka/daily
sudo apt update && sudo apt install moka-icon-theme -y


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

# Snapfly - menu Gtk
git clone https://github.com/drakmail/snapfly.git ~/i3/apps/snapfly
cd ~/i3/apps/snapfly/
sudo python setup.py install

# Morc_menu - Terminal
git clone https://github.com/Boruch-Baum/morc_menu.git ~/i3/apps/morc_menu

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

# App - The change Themes and Fonts
rm ~/.gtkrc-2.0
rm ~/.config/gtk-3.0/settings.ini
ln -s ~/i3/fonts/.gtkrc-2.0 ~/.
ln -s ~/i3/fonts/settings.ini ~/.config/gtk-3.0/.

# Set Style Fonts
sudo bash /etc/fonts/infinality/infctl.sh setstyle

# Theme Sublime Text
# ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
# "color_scheme": "Packages/User/SublimeLinter/Arc (SL).tmTheme",
# "theme": "Arc-Dark-Master.sublime-theme"
mv ~/i3/sublimetext/Sublime-Text-3-Arc-Dark-theme/Arc-Dark/ ~/.config/sublime-text-3/Packages/User/.
mv ~/i3/sublimetext/Sublime-Text-3-Arc-Dark-theme/Widget.sublime-settings ~/.config/sublime-text-3/Packages/User/.


# Prezto — Instantly Awesome Zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

cp ~/i3/zprezto/.zpreztorc ~/.zprezto/runcoms/.
chsh -s /bin/zsh

# Generate Shortcut
#grep '^## \|^### \|^bindsym $mod+\|^bindsym XF86' config | | awk '{print $0,"\n"}' > shortcut.md 

#########################################################
## Programs (download)
#########################################################

# Arc Theme
echo "# Arc Theme"
echo "https://github.com/horst3180/arc-firefox-theme/releases"
echo "https://github.com/horst3180/arc-theme"
#echo "https://github.com/Boruch-Baum/morc_menu"

# Install controller playerctl
# echo "# Install controller playerctl (Media Sound)"
echo "https://github.com/acrisci/playerctl/releases"
read