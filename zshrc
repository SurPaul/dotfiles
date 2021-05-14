# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

# export ARCHFLAGS="-arch x86_64"
export EDITOR=vim
export GST_ID3_TAG_ENCODING="windows-1251"
# export LANG=en_US.UTF-8
# export MANPATH="/usr/local/man:$MANPATH"
export PASSWORD_STORE_GENERATED_LENGTH=10
export PASSWORD_STORE_CHARACTER_SET=[:alnum:]
# export UPDATE_ZSH_DAYS=13

alias zshconf="vim ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias sshconf="vim ~/.ssh/config"
alias -g zplug="LC_MESSAGES=en_US.UTF-8 zplug"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# source $ZSH/oh-my-zsh.sh
source /usr/share/zplug/init.zsh

zplug "k4rthik/git-cal", as:command, from:github
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/themes", from:oh-my-zsh
zplug "plugins/wakeonlan", from:oh-my-zsh
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "themes/agnoster", from:oh-my-zsh, as:theme
zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
