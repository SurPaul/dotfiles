HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
setopt HIST_IGNORE_SPACE

export EDITOR=vim
export GST_ID3_TAG_ENCODING="windows-1251"
export PASSWORD_STORE_GENERATED_LENGTH=10
export PASSWORD_STORE_CHARACTER_SET=[:alnum:]

alias zshconf="vim ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias sshconf="vim ~/.ssh/config"
alias src="exec zsh"
alias -g zplug="LC_MESSAGES=en_US.UTF-8 zplug"

source /usr/share/zplug/init.zsh

zplug "plugins/bgnotify", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/git-auto-fetch", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-autosuggestions", from:github
zplug "zsh-users/zsh-completions", from:github
zplug "zsh-users/zsh-syntax-highlighting", from:github

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
source $ZPLUG_REPOS/robbyrussell/oh-my-zsh/oh-my-zsh.sh
