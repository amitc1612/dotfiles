## Fresh install of minimal Arch

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
yay -S --needed vim nano micro bat firefox google-chrome tree fastfetch zsh zsh-completions zsh-autosuggestions fzf pokemon-colorscripts-git pipewire wireplumber pipewire-pulse pipewire-alsa sof-firmware alsa-ucm-conf alsa-card-profiles

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```

- Hyprland installations:
```bash
yay -S --needed hypr kitty sddm swaync xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland noto-fonts waybar rofi hyprpaper hyprlock hypridle hyprshot ttf-jetbrains-mono-nerd ttf-font-awesome noto-fonts-emoji starship wl-clipboard python-pywal16 hyprpicker hyprsunset hyprsysteminfo dolphin kdeconnect hypr-kdeconnect-fix rose-pine-hyprcursor
```

- Enable services:
```bash
sudo systemctl enable --now sddm pipewire wireplumber pipewire-pulse
```

- Generate the initial `pywal` cache:
```bash
mkdir -p ~/walls
wal -i ~/walls/<your-wallpaper>
```
