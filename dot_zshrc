export PATH="$PATH:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:/usr/sbin"
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export GST_ID3_TAG_ENCODING="windows-1251"
export PASSWORD_STORE_GENERATED_LENGTH=10
export PASSWORD_STORE_CHARACTER_SET=[:alnum:]

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
setopt HIST_IGNORE_SPACE

source $ZSH/custom/plugins/catppuccin-zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

plugins=(fancy-ctrl-z sudo bgnotify zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zshconf="vim ~/.zshrc"
alias sshconf="vim ~/.ssh/config"
alias src="omz reload"
alias tmux="tmux new -A"
alias -g ls=lsd
alias -g cat=batcat

eval "$(starship init zsh)"