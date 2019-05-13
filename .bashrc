#
# ~/.bashrc
#
 
#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus
 
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
export HISTCONTROL=ignoreboth:erasedups
 
PS1='[\u@\h \W]\$ '
 
if [ -d "$HOME/.bin" ] ;
    then PATH="$HOME/.bin:$PATH"
fi
 
#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'                   
alias l.="ls -A | egrep '^\.'"      
 
#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
 
## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
 
#readable output
alias df='df -h'
 
#free
alias free="free -mt"
 
#continue download
alias wget="wget -c"
 
#userlist
alias userlist="cut -d: -f1 /etc/passwd"
 
#merge new settings
alias merge="xrdb -merge ~/.Xresources"
 
# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'
 
# yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"
 
#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
 
#create a file called .bashrc-personal and put all your personal aliases
#in there. They will not be overwritten by skel.
 
alias neofetch='clear && neofetch'
 
[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal
clear
neofetch
