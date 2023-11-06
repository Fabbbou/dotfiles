#!/bin/sh
# Note: This function performs a similar task to 'ssh-copy-id' and adds your SSH public key to the authorized_keys file on the remote host.
# Make sure you don't have the ssh-copy-id file before using this script

# This script adds an SSH public key to the authorized_keys file on a remote host.
# It checks if the local public key exists and, if not, provides instructions on how to generate it.
# If the remote ~/.ssh directory exists, it appends the public key to authorized_keys.
# If the remote ~/.ssh directory doesn't exist, it creates the directory and adds the key.
# Usage: add_ssh_key_to_remote [-p <port>] <remote_user@remote_host>
# Example: add_ssh_key_to_remote -p 2222 user@123.45.67.89

ssh_port=""
while getopts "p:" opt; do
    case $opt in
        p)
            ssh_port="-p $OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done
shift $((OPTIND-1))

# Check if a parameter is given and call the function with a provided remote host
if [ -z "$1" ]; then
    echo "Usage: add_ssh_key_to_remote [-p <port>] <remote_user@remote_host>"
    echo "Example: add_ssh_key_to_remote -p 2222 user@123.45.67.89"
    echo ""
    echo -e "Note: This function performs a similar task to 'ssh-copy-id' and \n      adds your SSH public key to the authorized_keys file on the remote host."
    exit 1
fi

remote_host="$1"
remote_ssh_dir="~/.ssh"
public_key_path="$HOME/.ssh/id_rsa.pub"  # Specify the full path to the public key file

# Check if the local public key exists
if [ ! -f $public_key_path ]; then
    echo "Public key file ($public_key_path) does not exist. Please run the following command to generate it:"
    echo "ssh-keygen -t rsa -b 4096 -C 'your_email@example.com'"
    exit 1
fi

# Check if the remote ~/.ssh directory exists
ssh $ssh_port $remote_host "[ -d $remote_ssh_dir ]"

if [ $? -eq 0 ]; then
    # If it exists, append the public key to authorized_keys
    cat $public_key_path | ssh $ssh_port $remote_host "cat >> $remote_ssh_dir/authorized_keys"
    echo "Public key added to remote authorized_keys."
else
    # If it doesn't exist, create the directory and add the key
    ssh $ssh_port $remote_host "mkdir -p $remote_ssh_dir && cat $public_key_path >> $remote_ssh_dir/authorized_keys"
    echo "Remote ~/.ssh directory created, and public key added to authorized_keys."
fi
exit 0
