# Amit's dotfiles

> [!NOTE]
> This guide assumes a fresh install of [CachyOS](https://cachyos.org) with Hyprland and [end-4's dotfiles](https://github.com/end-4/dots-hyprland), which already handle most of the installations.

> [!IMPORTANT]
> CachyOS's default shell is fish, so run `bash` first and paste the commands below in there.

### Add SSH key to Github:
```bash
ssh-keygen -t ed25519 -C "your-email-address"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh -T git@github.com # type "yes"
cat ~/.ssh/id_ed25519.pub
```
Add new SSH key here: https://github.com/settings/keys

### Configure the dotfiles bare repo:
```bash
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:amitc1612/dotfiles.git ~/.dotfiles
dot config --local status.showUntrackedFiles no
dot checkout
```
> [!TIP]
> If `dot checkout` complains about existing files (e.g. end-4's fastfetch config), back them up or remove them and run it again.

### Oh My ZSH:
CachyOS ships with fish as the default shell, so install zsh and Oh My ZSH, then switch the default shell:
```bash
sudo pacman -S --needed zsh fzf bat starship
RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM=$HOME/.config/zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
# zsh-autocomplete: pin to a known-good commit (newer ones break)
git clone https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git -C $ZSH_CUSTOM/plugins/zsh-autocomplete checkout 20f6c34

chsh -s $(which zsh)
```
Log out and back in for the shell change to take effect.

### Replace SDDM theme ([pixie](https://github.com/xCaptaiN09/pixie-sddm)):
> [!WARNING]
> Don't use pixie's `install.sh`: it detected Qt wrong and installed the Qt5 version. CachyOS needs the Qt6 version (the `main` branch), so install it manually:
```bash
sudo pacman -S --needed qt6-declarative qt6-svg
git clone -b main https://github.com/xCaptaiN09/pixie-sddm.git
sudo cp -r pixie-sddm /usr/share/sddm/themes/pixie
```
Then `sudoedit /etc/sddm.conf`:
```ini
[Theme]
Current=pixie
```
Preview it without logging out:
```bash
sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/pixie
```
