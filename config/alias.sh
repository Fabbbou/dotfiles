alias ll='ls -al'

########################
#### GO to folders #####
########################

alias gogit='cd ~/git'
alias godot="cd $DOTFILES_HOME"

########################
#### SET stuff in files#
########################

alias setdot="code $DOTFILES_HOME"
alias setgit="code ~/.gitconfig"
alias setlocal="code $DOTFILES_HOME/local.sh"
alias setrc="code $HOME/.bashrc"

########################
#### git           #####
########################
alias g='git'
#Added fetch to fetch all changes (new branch, etc.), not only changes from main branch.
alias gf='git checkout main && git fetch && git pull'
alias gitalias='git config --get-regexp ^alias'
alias gr="./gradlew"
