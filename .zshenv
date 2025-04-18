export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.config/zsh
export ZDOTDIR=$ZSH_CUSTOM
export PATH=$PATH:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/home/amitush/.spicetify
export LANG=en_IL.UTF-8
export MICRO_TRUECOLOR='1'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='micro'
fi
