RC_PATH="$HOME/.bashrc"

cd $HOME
echo "Cloning repo"
git clone https://github.com/Fabbbou/dotfiles.git
echo "Installing dotfiles"
mv dotfiles .dotfiles
echo -e "\n#Init dotfiles\nsource $HOME/.dotfiles/config/main.sh" >> "$RC_PATH"
git config --global include.path "$HOME/.dotfiles/config/gitconfig"
echo "# Add here every changes that are local to your system, and that shouldn't be kept in git repo.

# Example
# alias ss='ssh user@ip -p port'
" > "$HOME/.dotfiles/local.sh"
