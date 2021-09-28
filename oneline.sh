mkdir ~/.themes && sudo pacman -Syuu git wget tar gnome-tweaks --noconfirm
wget -O ~/.themes/purple.tar.zx [get the URL]
tar -xf ~/.themes/purple.tar.zx
rm -f ~/.themes/purple.tar.zx
gnome-extensions enable 'user-there@gnome-shell-extensions.gcampx.github.com'
makepkg -si /chrome-gnome-shell