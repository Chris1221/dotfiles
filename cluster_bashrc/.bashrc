# see "man bash" for more information
PS1="\u@\h\$ "

#put all programs in path ( this gets too long, 256 bit limit on path)
#PATH=${PATH}:$(find ~/Programs -type d | tr '\n' ':' | sed 's/:$//')

PATH=${PATH}:~/Programs/binary_executables
range="~/Scripts/scripts/shell/range.sh"

alias rm="rm -i"
alias xclip="xclip -selection c"
alias i="cd ~/Scripts/impute"
alias cad="cd ~/cad_grs/"
alias lsd="ls -d */"
alias lsdd="ls -d */*/"


## extend the bash ls and rm syntax to allow ! and @
shopt -s extglob

## xclip
alias xclip="xclip -selection c"
alias ranger="~/Programs/binary_executables/ranger-1.7.2/ranger.py"


export TERM=linux
export EDITOR=vim

alias vi=vim
alias nvim=vim
#alias vim="vim -u ~/.vim/.vimrc"

# Path to the bash it configuration
export BASH_IT="/home/hpc2862/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
export BASH_IT_THEME='powerline-plain'
# Load Bash It
source $BASH_IT/bash_it.sh

# Use the newest version of GCC becuase it breaks a lot of things
use gcc-4.9.2
