# Installation script for Hyprland along with a personal configuration

# System update
echo -e "\e[92mUpdating system...\e[m"
sudo pacman -Syu --noconfirm
sudo usermod -aG input,seat $USER # Some weird-ass command to enable peripheric detection

# Nvidia pilotes installation
echo -e "\e[92mInstalling Nvidia pilots...\e[m"
sudo pacman -Sy --noconfirm nvidia nvidia-utils nvidia-settings
echo "nvidia" | sudo tee /etc/modules-load.d/nvidia.conf
sudo mkinitcpio -P
sudo pacman -Sy --noconfirm nvidia-prime # Used for running apps on the Nvidia GPU

# Hyprland installation
echo -e "\e[92mInstalling hyprland...\e[m"
sudo pacman -Sy --noconfirm hyprland wayland wayland-protocols xorg-xwayland kitty sddm git
sudo systemctl enable sddm

# AUR (yay) Installation
echo -e "\e[92mInstalling yay...\e[m"
exit 
git clone https://aur.archlinux.org/yay.git
cd yay
su - "$SUDO_USER" -c "makepkg -si"

# Brave Installation
echo -e "\e[92mInstalling Brave...\e[m"
curl -fsS https://dl.brave.com/install.sh | sh

# Vscodium installation
echo -e "\e[92mInstalling Vscodium...\e[m"
yay -S --noconfirm --clean vscodium-bin

# Emojis
echo -e "\e[92mInstalling emojis...\e[m"
yay -S --noconfirm --clean ttf-twemoji

# Rofi (fixed wayland version)
echo -e "\e[92mInstalling rofi...\e[m"
yay -S --noconfirm --clean rofi-lbonn-wayland 

# Dolphin file explorer
echo -e "\e[92mInstalling dolphin...\e[m"
sudo pacman -Sy --noconfirm dolphin

# Waybar and its dependencies
echo -e "\e[92mInstalling waybar...\e[m"
sudo pacman -Sy --noconfirm waybar
sudo pacman -Sy --noconfirm ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common

# Hyprpaper 
echo -e "\e[92mInstalling and configuring hyprpaper...\e[m"
sudo pacman -Sy --noconfirm hyprpaper
mkdir ~/.config/hypr/wallpapers
cp wallpapers/YourName.jpg ~/.config/hypr/wallpapers


# Copying configs
echo -e "\e[92mCopying configuration files...\e[m"
cp -rf hyprland ../.config/hypr/hyprland
cp -rf kitty ../.config/kitty
cp -rf wallpapers ../.config/hypr/wallpapers
cp -rf waybar ../.config/waybar
cp -rf rofi ../.config/rofi

# Copying bashrc configs
cp -f .bashrc ../.bashrc
cp ascii.txt ../.config/ascii.txt

# Reboot system
echo -e "\e[92mRebooting system...\e[m"
reboot
