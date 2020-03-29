#
# ikanian's .zshrc file
#

# Variables
LATEX_COMPILER="xelatex"
LATEX_OUTPUT="pdf"
XDG_CONFIG_HOME=~/.config
XDG_CACHE_HOME=~/.cache
XDG_DATA_HOME=~/.local/share


# Oh-my-zsh things
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyy/mm/dd"
plugins=(gpg-agent)

source $ZSH/oh-my-zsh.sh


# Add aliases, exports and path
source ~/.zsh.aliases   #$PATH is defined here
source ~/.zsh.exports

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

