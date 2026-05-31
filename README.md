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
yay -S --needed vim nano micro bat openssh firefox google-chrome tree fastfetch zsh zsh-completions zsh-autosuggestions fzf pokemon-colorscripts-git pipewire wireplumber pipewire-pulse pipewire-alsa sof-firmware alsa-ucm-conf alsa-card-profiles vlc bluez bluez-utils blueman
```

- Oh My ZSH:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```

- Add SSH key to Github:
```bash
ssh-keygen -t ed25519 -C "your-email-address"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com # type "yes"
cat .ssh/id_ed25519.pub
```
Add new SSH key here: https://github.com/settings/keys

- Configure git:
```bash
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mkdir ~/.dotfiles
git clone --bare git@github.com:amitc1612/dotfiles.git ~/.dotfiles
dot config --local status.showUntrackedFiles no
dot checkout
```

- Hyprland installations:
```bash
yay -S --needed hypr kitty sddm swaync xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland noto-fonts waybar rofi hyprpaper hyprlock hypridle hyprshot ttf-jetbrains-mono-nerd ttf-font-awesome noto-fonts-emoji starship wl-clipboard python-pywal16 hyprpicker cliphist hyprsunset hyprsysteminfo dolphin kdeconnect hypr-kdeconnect-fix rose-pine-hyprcursor playerctl pavucontrol brightnessctl sddm-silent-theme waybar-module-music-git apple-fonts gwenview wev grim slurp awww waypaper gnome-themes-extra gnome-themes-extra-gtk2 adwaita-qt5 adwaita-qt6-git peaclock qt5-quickcontrols qt5-quickcontrols2 qt5-declarative qt5-graphicaleffects ttf-cascadia-code
```

- Enable services:
```bash
sudo systemctl enable --now sddm pipewire wireplumber pipewire-pulse bluetooth
```

- Generate the initial `pywal` cache:
```bash
mkdir -p ~/walls
wal -i ~/walls/<your-wallpaper>
```

- Replace SDDM theme: `sudoedit /etc/sddm.conf`
```bash
[General]
InputMethod=qtvirtualkeyboard
GreeterEnvironment=QML2_IMPORT_PATH=/usr/share/sddm/themes/silent/components/,QT_IM_MODULE=qtvirtualkeyboard

[Theme]
Current=silent
```

- Replace GRUB theme
```bash
git clone https://github.com/adnksharp/CyberGRUB-2077
cd CyberGRUB-2077
sudo $SHELL ./install.sh
```
