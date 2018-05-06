# dotfiles
My personal dotfiles for my Arch installation

## Add files to a new repository
```
# Create new bare repository
git init --bare $HOME/.cfg

# Create alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Prevent adding unwanted files
config config --local status.showUntrackedFiles no

# Add alias to existing aliases
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_aliases

# Add files via `config` alias:
config status
config add .vimrc
config commit -m "Add vimrc"

# Set upstream repo
config remote add origin https://github.com/lucachristen/dotfiles.git
config push --set-upstream origin master
```

## Install repo on new system
```
# Prevent recursion problems
echo ".cfg" >> .gitignore

# Clone repo
git clone --bare git@github.com:lucachristen/dotfiles.git $HOME/.cfg

# Create alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Checkout actual content into $HOME (delete files if some would be overwritte by checkout)
config checkout

# Prevent adding unwanted files
config config --local status.showUntrackedFiles no
```

## Source
This dotfile backup system is based on this post:

https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

