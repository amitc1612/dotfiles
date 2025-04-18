# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="half-life"

# Auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Auto-update frequency (in days).
zstyle ':omz:update' frequency 7

# History
export HIST_STAMPS='yyyy-mm-dd'
export HISTSIZE=10000
export SAVEHIST=10000

# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/history
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	# git
	zsh-autosuggestions
	zsh-syntax-highlighting
	fast-syntax-highlighting 
	zsh-autocomplete
	aliases
	alias-finder
	catimg
	dnf
	emoji
	fzf
	kitty
	sudo
	tldr
	themes
	tailscale
	z
)

source $ZSH/oh-my-zsh.sh

zstyle ':omz:plugins:alias-finder' autoload yes # disabled by default
zstyle ':omz:plugins:alias-finder' longer yes # disabled by default
zstyle ':omz:plugins:alias-finder' exact yes # disabled by default
zstyle ':omz:plugins:alias-finder' cheaper yes # disabled by default

# Pokemon fastfetch
pokemon-colorscripts --no-title -rn arceus,articuno,azelf,celebi,cobalion,cresselia,darkrai,deoxys,dialga,diancie,entei,giratina,groudon,heatran,ho-oh,hoopa,jirachi,keldeo,kyogre,kyurem,landorus,latias,latios,lugia,manaphy,marshadow,meloetta,mew,mewtwo,moltres,mesprit,necrozma,palkia,phione,raikou,rayquaza,regice,regigigas,regirock,registeel,reshiram,shaymin,solgaleo,suicune,terrakion,thundurus,tornadus,uxie,victini,virizion,volcanion,xerneas,yveltal,zapdos,zekrom,zeraora,zygarde,snorlax,ditto,pikachu,charizard,drampa | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -
