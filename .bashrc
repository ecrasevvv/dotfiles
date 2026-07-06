#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export HISTSIZE=10000
export EDITOR='vim'
export XCURSOR_THEME=Bibata-Modern-Classic
export XCURSOR_SIZE=20

# remaps
setxkbmap -option caps:escape

# fzf
export FZF_DEFAULT_OPTS="
--height 5%
--layout=reverse
--color=bw
--prompt='$'
--color=bg+:#3d4730,fg+:#ffffff,hl+:#15ed05
"
eval "$(fzf --bash)"

alias c='clear'
alias ll='ls -l'
alias la='ls -la'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vv='vim ~/Notes/diary.md'
alias ..='cd ..'

# default
PS1='[\u@\h \W]\e[32m\]$(parse_git_branch)\[\e[00m\]# '
#export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#PS1='\[\e[32m\]\h@\[\e[35m\]\u \[\e[0m\]\w\[\e[36m\] $(parse_git_branch)\[\e[00m\]\$ '
