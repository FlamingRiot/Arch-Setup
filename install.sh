# Installation script for Hyprland along with a personal configuration

# System update
echo "Updating system..."
sudo pacman -Syu --noconfirm
sudo usermod -aG input,seat $USER # Some weird-ass command to enable peripheric detection

# Nvidia pilotes installation
sudo pacman -S nvidia nvidia-utils nvidia-settings
echo "nvidia" | sudo tee /etc/modules-load.d/nvidia.conf
sudo mkinitcpio -P
sudo pacman -S nvidia-prime # Used for running apps on the Nvidia GPU

# Hyprland installation
echo "Installing hyprland..."
sudo pacman -S hyprland wayland wayland-protocols xorg-xwayland kitty sddm git
sudo systemctl enable sddm

# AUR (yay) Installation
echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Brave Installation
echo "Installing Brave..."
curl -fsS https://dl.brave.com/install.sh | sh

# Vscodium installation
echo "Installing Vscodium..."
yay -S --noconfirm --clean vscodium-bin

# Emojis
echo "Installing emojis..."
yay -S --noconfirm --clean ttf-twemoji

# Rofi (fixed wayland version)
echo "Installing rofi..."
yay -S --noconfirm --clean rofi-lbonn-wayland 

# Dolphin file explorer
echo "Installing dolphin..."
sudo pacman -S dolphin

# Waybar and its dependencies
echo "Installing waybar..."
sudo pacman -S waybar
sudo pacman -S ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common

# Hyprpaper 
echo "Installing and configuring hyprpaper..."
sudo pacman -S hyprpaperw
mkdir ~/.config/hypr/wallpapers
cp wallpapers/YourName.jpg ~/.config/hypr/wallpapers


# Copying configs
echo "Copying configuration files..."
cp -rf hyprland ../.config/hypr/hyprland
cp -rf kitty ../.config/kitty
cp -r wallpapers ../.config/hypr/wallpapers
cp -rf waybar ../.config/waybar
cp -rf rofi ../.config/rofi

# Copying bashrc configs
cp -f .bashrc ../.bashrc
cp ascii.txt ../.config/ascii.txt