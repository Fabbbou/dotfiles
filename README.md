# dotfiles
This is my dotfile repo, everything starts from here.

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

## Uninstall
- Remove the folder: `rm -rf ~/.dotfiles`
- Remove the line `source ~/.dotfiles/config/main.sh` from your `~/.<shell>rc` file
- Remove the git config : `git config --global --unset include.path`

Next steps:
- [ ] Add a warn when the repo needs to be updated
- [ ] Add an update script to manage migration? 
