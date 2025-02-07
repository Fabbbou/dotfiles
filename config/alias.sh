########################
#### dotfiles/bin  #####
########################

alias adssh="$DOTFILES_HOME/bin/add_ssh_key_to_remote.sh"
alias lnfolder="$DOTFILES_HOME/bin/ln_folder.sh"

########################
####      LS       #####
########################

alias ll='ls -alh'

########################
#### GO to folders #####
########################

alias gogit='cd ~/git'
alias godot="cd $DOTFILES_HOME"

########################
#### SET stuff in files#
########################

alias setdot="code $DOTFILES_HOME"
alias setgit="code $DOTFILES_HOME/gitconfig"
alias setlocal="code $DOTFILES_HOME/local.sh"
alias setrc="code $HOME/.bashrc"

########################
#### git           #####
########################
alias g='git'
#Added fetch to fetch all changes (new branch, etc.), not only changes from main branch.
alias gf='git checkout main && git fetch && git pull'
alias gitalias='git config --get-regexp ^alias'
alias gac='git add . && git commit -m'

########################
####      Misc      ####
########################
alias gr="./gradlew"
alias helpscreen="echo 'screen cmd: ctrl + a, then d to detach. screen -r to resume. screen -ls to list.'"
alias dot_reload="source ~/.dotfiles/config/main.sh"

#you need to do this first to make the alias working correctly: $> powercfg -h off
#src: https://www.howtogeek.com/763430/how-to-put-a-windows-11-pc-to-sleep/
alias winsleep="rundll32.exe powrprof.dll,SetSuspendState 0,1,0"
