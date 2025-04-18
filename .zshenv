# ZSH
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.config/zsh
export ZDOTDIR=$ZSH_CUSTOM

# XDG Base Directory
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export OLLAMA_MODELS=$XDG_DATA_HOME/ollama/models 
export _Z_DATA=$XDG_DATA_HOME/z

# Misc
export PATH=$PATH:$HOME/bin:$HOME/.local/bin:/usr/local/bin:/home/amitush/.spicetify
export LANG=en_IL.UTF-8
export MICRO_TRUECOLOR='1'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nano'
else
	export EDITOR='micro'
fi
