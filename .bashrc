#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\[\e[92m\]\v\[\e[m\]]\[\e[91m\]\W\[\e[m\]@\[\e[96m\]\u\[\e[m\]: '

cat ~/.config/ascii.txt
echo -e "\e[40m  \e[41m  \e[42m  \e[43m  \e[44m  \e[45m  \e[46m  \e[47m  \e[0m \n"
