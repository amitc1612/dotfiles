# Fresh install of minimal Arch

- Connect to the Internet:
```bash
iwctl
station wlan0 connect "my-network"
```

- Install yay:
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Update your system:
yay -Syu
```

- Basic installations:
```bash
yay -S --needed vim nano micro firefox google-chrome tree fastfetch zsh zsh-completions zsh-autosuggestions

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- Hyprland installations:
```bash
yay -S --needed hypr kitty sddm swaync pipewire wireplumber xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland noto-fonts waybar rofi hyprpaper hyprlock hypridle hyprshot ttf-jetbrains-mono-nerd ttf-font-awesome noto-fonts-emoji starship wl-clipboard python-pywal16 hyprpicker hyprsunset hyprsysteminfo dolphin kdeconnect hypr-kdeconnect-fix
```

- Generate the initial `pywal` cache:
```bash
mkdir -p ~/walls
wal -i ~/walls/<your-wallpaper>
```
