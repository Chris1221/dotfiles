#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/christopher/.byobu/prompt ] && . /home/christopher/.byobu/prompt   #byobu-prompt#

alias open=gvfs-open
