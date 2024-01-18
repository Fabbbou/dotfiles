#Don't touch this, it is reused everywhere
export DOTFILES_HOME="$HOME/.dotfiles"

########################
# Add your sh files you want to use to source your bash such as alias, or variables here
########################
source "$DOTFILES_HOME/config/alias.sh"
source "$DOTFILES_HOME/local.sh"

#######################
# Add in PATH 
#######################

PATH=$PATH:$DOTFILES_HOME/bin/
