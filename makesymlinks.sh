#!/bin/bash
############################
# makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in the current directory
############################

########## Variables
dir=$(pwd)                               # Current dotfiles directory
olddir=~/dotfiles_old                    # Old dotfiles backup directory
files="zshrc bashrc vimrc hgrc gitconfig gitignore"    # List of files to symlink

##########

# create dotfiles_old in homedir
if [ ! -d "$olddir" ]; then
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p "$olddir"
    echo "...done"
fi

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd "$dir" || exit
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    target="$HOME/.$file"
    source="$dir/$file"

    # Check if the file exists in the repository
    if [ ! -f "$source" ]; then
        echo "Warning: $file not found in $dir, skipping."
        continue
    fi

    # Check if the symlink already exists and points to the correct location
    if [ -L "$target" ] && [ "$(readlink "$target")" == "$source" ]; then
        echo "Success: $target already symlinked to $source"
        continue
    fi

    # Backup existing file if it's not already a link to our dotfiles
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "Backing up existing $target to $olddir"
        mv "$target" "$olddir/"
    fi

    echo "Creating symlink to $file in home directory."
    ln -s "$source" "$target"
done

echo "Symlinking complete!"
