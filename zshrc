#
# ikanian's .zshrc file
#

# Variables
LATEX_COMPILER="xelatex"
LATEX_OUTPUT="pdf"


# Oh-my-zsh things
export ZSH=/home/ikanian/.oh-my-zsh
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyy/mm/dd"
#plugins=(git)

source $ZSH/oh-my-zsh.sh


# Add aliases, exports and path
source ~/.zsh.aliases   #$PATH is defined here
source ~/.zsh.exports

# rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

