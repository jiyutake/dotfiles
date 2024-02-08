export TERM="st-256color"
export EDITOR="nvim"
[[ $- != *i* ]] && return

# Very original and unique prompt. (i'll look into it later...)
PROMPT_COMMAND='PS1X=$(perl -p -e "s|^${HOME}|~|;s|([^/])[^/]*/|$""1/|g" <<<${PWD})'
PS1='\[\e[91;1m\]${PS1X}\n\[\e[91;1m\]♥ \[\e[0m\]'

alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
alias ls='eza -sa --color=always --group-directories-first'
alias la='eza -la --color=always --group-directories-first'
