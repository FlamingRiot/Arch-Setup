# Installation script for Hyprland along with a personal configuration

# System update
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Hyprland installation
echo "Installing hyprland..."
sudo pacman -S hyprland wayland wayland-protocols xorg-xwayland kitty sddm git
sudo systemctl enable sddm.service

# AUR (yay) Installation
echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Brave Installation
echo "Installing Brave..."
curl -fsS https://dl.brave.com/install.sh | sh

