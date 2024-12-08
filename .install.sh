RC_PATH="$HOME/.bashrc"

cd $HOME
echo "Cloning repo"
git clone https://github.com/Fabbbou/dotfiles.git
echo "Installing dotfiles"
mv dotfiles .dotfiles
echo -e "\n#Init dotfiles\nsource $HOME/.dotfiles/config/main.sh" >> "$RC_PATH"
git config --global include.path "$HOME/.dotfiles/config/gitconfig"
echo "#Add changes local customization that wont be commited here
#Example:
#alias ss='ssh user@ip -p port'
" > "$HOME/.dotfiles/local.sh"
source "$RC_PATH"
echo "Dotfiles installed in $HOME/.dotfiles and ready to use!"
echo "You can now delete the current folder $PWD"