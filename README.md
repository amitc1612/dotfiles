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
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

chsh -s $(which zsh)
```
Log out and back in for the shell change to take effect.

### Replace SDDM theme:
```bash
paru -S pixie-sddm-git
```
Then `sudoedit /etc/sddm.conf`:
```ini
[Theme]
Current=pixie
```
> [!TIP]
> Make sure `Current` matches the theme's folder name in `/usr/share/sddm/themes/`.
