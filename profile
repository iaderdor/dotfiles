#
# This is the .profile dotfile of iaderdor.
#
#

# Locale selection

export LANG=es_ES.UTF-8


# SSH things

export SSH_KEY_PATH="~/.ssh/rsa_id"


# Switch scape and caps lock keys (doesn't work)
sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null


# Load PATH

export PATH="$PATH:/root/.gem/ruby/2.4.0/bin"

export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Variables

LATEX_COMPILER="xelatex"
LATEX_OUTPUT="pdf"


if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='nvim'
fi


# Aliases for LaTeX
 
alias lt="$LATEX_COMPILER --interaction=nonstopmode --synctex=1 --output-directory=$LATEX_OUTPUT"
alias lth="$LATEX_COMPILER --interaction=nonstopmode --synctex=1"


# Other aliases

alias clipboard="xclip -selection clipboard"
alias vim="nvim"




