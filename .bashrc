#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
alias rar='~/scripts/su.sh'
# PS1='[\u@\h \W]\$ '
PS1="
\[\e[1;31m\][\A]\[\e[m\]
\[\e[1;36m\][\[\e[m\]\[\e[1;37m\]\w\[\e[m\]\[\e[1;36m\]]\$\[\e[m\] "

PS2="\[\e[1;31m\]›\[\e[m\] "
set -o vi
bind -s 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'
bind -x $'"\C-l":clear;'
