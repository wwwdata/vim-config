export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"


plugins=(git gitfast git-extras z encode64 extract vi-mode)
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status custom_timer)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_CUSTOM_TIMER="report_start_time"
POWERLEVEL9K_CUSTOM_TIMER_BACKGROUND="black"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='black'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9K_STATUS_OK_FOREGROUND='119'

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="blue"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="black"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="green"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"

# timer
autoload -U add-zsh-hook
typeset -F SECONDS
function record_start_time() {
  emulate -L zsh
  unset ZSH_START_TIME
  ZSH_START_TIME=${ZSH_START_TIME:-$SECONDS}
}

add-zsh-hook preexec record_start_time

function report_start_time() {
  if [ $ZSH_START_TIME ]; then
    local DELTA=$(($SECONDS - $ZSH_START_TIME))
    local DAYS=$((~~($DELTA / 86400)))
    local HOURS=$((~~(($DELTA - $DAYS * 86400) / 3600)))
    local MINUTES=$((~~(($DELTA - $DAYS * 86400 - $HOURS * 3600) / 60)))
    local SECS=$(($DELTA - $DAYS * 86400 - $HOURS * 3600 - $MINUTES * 60))
    local ELAPSED=''
    test "$DAYS" != '0' && ELAPSED="${DAYS}d"
    test "$HOURS" != '0' && ELAPSED="${ELAPSED}${HOURS}h"
    test "$MINUTES" != '0' && ELAPSED="${ELAPSED}${MINUTES}m"
    if [ "$ELAPSED" = '' ]; then
      SECS="$(print -f "%.2f" $SECS)s"
    elif [ "$DAYS" != '0' ]; then
      SECS=''
    else
      SECS="$((~~$SECS))s"
    fi
    ELAPSED="${ELAPSED}${SECS}"
    local ITALIC_ON=$'\e[3m'
    local ITALIC_OFF=$'\e[23m'
    unset ZSH_START_TIME
    echo -n "%F{cyan}%{$ITALIC_ON%}${ELAPSED}%{$ITALIC_OFF%}"
  fi
}

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

export EDITOR='nvim'

# Customize to your needs...
export PATH=~/.dotfiles/zsh/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/texlive/2020/bin/x86_64-darwin
export GOPATH=$HOME/Go
export GO111MODULE=on
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin
export PATH=$PATH:~/.dotfiles/zsh/scripts
# homebrew ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export BAT_THEME="Gruvbox-N"

# use hub instead of git
# eval "$(hub alias -s)"

alias vim=nvim
alias yip=yarn install --pure-lockfile
alias ssh='TERM=xterm-color ssh'
alias mutt='TERM=screen-256color mutt'
alias cat=bat
alias ls=exa
alias fat='flutter analyze && flutter test'
alias fwt='ls test/**/*_test.dart | entr -c -d flutter test /_'

rcios() {
	xcrun simctl io booted recordVideo $1
}

# history settings
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

# additional secret stuff like api keys
source $HOME/.dotfiles/zsh/private.zsh

# open files
ulimit -n 10000

# do not write jrnl entries to history
setopt HIST_IGNORE_SPACE
alias jrnl=" jrnl"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
