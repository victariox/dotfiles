
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias du='du -h'
alias ll='ls -lt'

alias wtc="curl --silent 'http://whatthecommit.com/index.txt'"
alias fx="find . | xargs grep -si "
alias fehh="feh --scale-down --auto-zoom --draw-filename"
alias gen_pkg="echo 'pacman -Qe' > ~/Projects/dotfiles/.arch_packages;pacman -Qe >> ~/Projects/dotfiles/.arch_packages" 
