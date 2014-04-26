alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias mkdir='mkdir -p'

PROMPT="%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~
%# "

#able to use colors
autoload -Uz colors
colors

#auto pushd
setopt auto_pushd

#egnore dup in pushd
setopt pushd_ignore_dups

#history preferance
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

#stop beep
setopt no_beep

#share history with other session
setopt share_history

#don't save same command in history
setopt hist_ignore_all_dups

#if there is same command in history put it on the top
setopt hist_save_nodups

#won't save command started with space
setopt hist_ignore_space

#elase space when saving to history
    setopt hist_reduce_blanks

#for Macprots
export PATH=/opt/local/bin:/opt/local/sbin/:$PATH


#won't save command started with space
setopt hist_ignore_space

#elase space when saving to history
    setopt hist_reduce_blanks
