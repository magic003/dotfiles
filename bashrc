#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vi='vim'
alias ll='ls -l'
alias sml='/usr/lib/smlnj/bin/sml'

# for sudo <TAB> completion
complete -cf sudo

[[ -s "/home/minjie/.rvm/scripts/rvm" ]] && source "/home/minjie/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
