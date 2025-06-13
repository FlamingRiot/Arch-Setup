# Installation script for Hyprland along with a personal configuration

# System update
echo -e "\e[92mUpdating system..."
sudo pacman -Syu --noconfirm
sudo usermod -aG input,seat $USER # Some weird-ass command to enable peripheric detection

# Nvidia pilotes installation
echo -e "\e[92mInstalling Nvidia pilots..."
sudo pacman -Sy nvidia nvidia-utils nvidia-settings
echo "nvidia" | sudo tee /etc/modules-load.d/nvidia.conf
sudo mkinitcpio -P
sudo pacman -Sy nvidia-prime # Used for running apps on the Nvidia GPU

# Hyprland installation
echo -e "\e[92mInstalling hyprland..."
sudo pacman -Sy hyprland wayland wayland-protocols xorg-xwayland kitty sddm git
sudo systemctl enable sddm

# AUR (yay) Installation
echo -e "\e[92mInstalling yay..."
exit 
git clone https://aur.archlinux.org/yay.git
cd yay
su - "$SUDO_USER" -c "makepkg -si"

# Brave Installation
echo -e "\e[92mInstalling Brave..."
curl -fsS https://dl.brave.com/install.sh | sh

# Vscodium installation
echo -e "\e[92mInstalling Vscodium..."
yay -S --noconfirm --clean vscodium-bin

# Emojis
echo -e "\e[92mInstalling emojis..."
yay -S --noconfirm --clean ttf-twemoji

# Rofi (fixed wayland version)
echo -e "\e[92mInstalling rofi..."
yay -S --noconfirm --clean rofi-lbonn-wayland 

# Dolphin file explorer
echo -e "\e[92mInstalling dolphin..."
sudo pacman -Sy dolphin

# Waybar and its dependencies
echo -e "\e[92mInstalling waybar..."
sudo pacman -Sy waybar
sudo pacman -Sy ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common

# Hyprpaper 
echo -e "\e[92mInstalling and configuring hyprpaper..."
sudo pacman -Sy hyprpaper
mkdir ~/.config/hypr/wallpapers
cp wallpapers/YourName.jpg ~/.config/hypr/wallpapers


# Copying configs
echo -e "\e[92mCopying configuration files..."
cp -rf hyprland ../.config/hypr/hyprland
cp -rf kitty ../.config/kitty
cp -rf wallpapers ../.config/hypr/wallpapers
cp -rf waybar ../.config/waybar
cp -rf rofi ../.config/rofi

# Copying bashrc configs
cp -f .bashrc ../.bashrc
cp ascii.txt ../.config/ascii.txt

# Reboot system
echo -e "\e[92mRebooting system..."
reboot
