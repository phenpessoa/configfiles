export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:/usr/local/go/bin:$PATH
export PATH=$HOME/go/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=( 
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-interactive-cd
    git
)

source $ZSH/oh-my-zsh.sh

if [ "$TMUX" = "" ]; then tmux; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
