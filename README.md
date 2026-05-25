# Fresh install of minimal Arch

- Connect to the Internet
```bash
iwctl
station wlan0 connect "my-network"
```

- Install yay
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Update your system
yay -Syu
```

- Basic installations
```bash
yay -S vim nano micro firefox
```

- Hyprland installations
```bash
yay -S hypr kitty sddm swaync pipewire wireplumber xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland qt6-wayland noto-fonts waybar
```
