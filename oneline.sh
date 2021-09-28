if [ ! -d ~/.themes ]; then
  mkdir -p ~/.themes;
fi
sudo pacman -Syuu git wget tar gnome-tweaks cmake jq --noconfirm;
sudo pacman -S --needed base-devel --noconfirm;
wget -O ~/.themes/purple.tar.xz https://dl1.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MzAzMjI4MzMiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjEyMjZmYmI5ZmVmYWQ2ODBiZGEzMDA4OWY5MmE5NzVjMTM2ZWIyZTFlZTUzNjdhNTY1ODNhY2M5MWJmMWM5NTUwY2VjMzc5OTZhZmU1ZDJhZjlkZWJlYjM3ZGFiM2EzNTI5NzU0ZTZmMDQ3OGY4M2E0MzZlOWZlNGI5YjI3ZjQ4IiwidCI6MTYzMjg3MTUxMCwic3RmcCI6bnVsbCwic3RpcCI6bnVsbH0.8XVOkIVFl33wQYwjeC1wuO18ZbHrGHuSujCgjYcKhm0/Orchis-purple.tar.xz;
tar -xf ~/.themes/purple.tar.xz;
rm -f ~/.themes/purple.tar.xz;
git clone https://aur.archlinux.org/chrome-gnome-shell-git.git /tmp/chrome-gnome-shell;
cd /tmp/chrome-gnome-shell && makepkg -si;
rm -fdr /tmp/chrome-gnome-shell;
gnome-extensions enable 'user-there@gnome-shell-extensions.gcampx.github.com';
cd /tmp/chrome-gnome-shell && makepkg -si;