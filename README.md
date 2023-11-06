# dotfiles
This is my dotfile repo, everything starts from here.

## Requirements
You need just to have:
- wget
- git

## Installing

### You want to use bash as you main shell

```bash
wget https://raw.githubusercontent.com/Fabbbou/dotfiles/main/install.sh | bash
```

### Custom shell

- Simply use the copy-paste/download the install.sh file
- Change the `RC_PATH` at the beginning of the install.sh to your own terminal rc path
- Run it (might need sudo / chmod +x this as well maybe)

## Update (when a new commit is up here)

```sh
godot
g pull
```

## Uninstall
- Remove the folder: `rm -rf ~/.dotfiles`
- Remove the line `source ~/.dotfiles/config/main.sh` from your `~/.<shell>rc` file
- Remove the git config : `git config --global --unset include.path`