# Misc
alias o='xdg-open'
alias u='aunpack'

# Python
alias penvi='pipenv install'
alias penvr='pipenv run python'

# pacman
alias pac='sudo pacman -S'
alias pacu='sudo pacman -Syu'

# netctl
alias nets='sudo netctl start'
alias netst='sudo netctl switch-to'

# git
alias config='/usr/bin/git --git-dir=/home/luca/.cfg/ --work-tree=/home/luca'

alias log='git log --decorate --all --graph --stat'
alias slog='git log --decorate --graph --pretty=oneline --abbrev-commit'

alias gs='git status'
alias gdiff='git diff'
alias gcdiff='git diff --cached'

fetchlog() {
    git fetch --all
    git log origin/master --decorate --all --graph --stat
}
