# dotfiles
This is my dotfiles repo.
I use this to install all my aliases and scripts on every OS I'm using to make my life easier.

## Requirements
You need just to have:
- git

## Installing

### You want to use bash as you main shell

1. Make sure you added you SSH key to your github account
  * check if you have an ssh key `cat ~/.ssh/id_ed25519.pub`
    * [if not]: `ssh-keygen -t ed25519 -C "18026601+Fabbbou@users.noreply.github.com"` - I already put the correct mail for you ;)  
  * just copy it and add it to the [Authenticate Keys on your account](https://github.com/settings/keys)
2. Clone the repo: `git clone git@github.com:Fabbbou/dotfiles.git && cd dotfiles`
3. Execute the install script: `sudo chmod +x .install.sh && ./.install.sh`
  * [if not using bash] You may change the `RC_PATH` var in the script

### Custom shell

- Simply use the copy-paste/download the install.sh file
- Change the `RC_PATH` at the beginning of the install.sh to your own terminal rc path
- Run it (might need sudo / chmod +x this as well maybe)

## Update (when a new commit is up here)

```sh
godot
g pull
```
> `godot` aliases is not a ref to the GoDot engine, but just an alias to 'go to dotfiles folder'
> see `config/alias.sh` file

## Uninstall
- Remove the folder: `rm -rf ~/.dotfiles`
- Remove the line `source ~/.dotfiles/config/main.sh` from your `~/.<shell>rc` file
- Remove the git config : `git config --global --unset include.path`

TODO:
- [ ] Script: compare current repo version and remote version to trigger a pull on startup
