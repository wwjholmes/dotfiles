#!/bin/bash

# --- Helper Functions ---
echo_info() { echo -e "\033[1;34m[INFO]\033[0m $1"; }
echo_success() { echo -e "\033[1;32m[SUCCESS]\033[0m $1"; }
echo_warn() { echo -e "\033[1;33m[WARN]\033[0m $1"; }

dir=$(pwd)
olddir=~/dotfiles_old
mkdir -p "$olddir"

link_file() {
    local source_name=$1
    local target_name=$2
    local source="$dir/$source_name"
    local target="$HOME/$target_name"

    if [ ! -f "$source" ]; then
        echo_warn "$source_name not found, skipping."
        return
    fi

    # Check if correct symlink exists
    if [ -L "$target" ] && [ "$(readlink "$target")" == "$source" ]; then
        echo_info "$target_name is already correctly linked."
        return
    fi

    # Backup if it's not a symlink to our repo
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo_info "Backing up existing $target_name to $olddir"
        mv "$target" "$olddir/"
    fi

    echo_info "Creating symlink for $target_name"
    ln -s "$source" "$target"
}

case $1 in
    git)
        echo_info "Linking Git module..."
        link_file "gitconfig" ".gitconfig"
        link_file "gitignore" ".gitignore"
        echo_success "Git module linked!"
        ;;
    vim)
        echo_info "Linking Vim module..."
        link_file "vimrc" ".vimrc"
        # Optional: Link vim folder if it exists
        if [ -d "$dir/vim" ]; then
            link_file "vim" ".vim"
        fi
        echo_success "Vim module linked!"
        ;;
    zsh)
        echo_info "Linking Zsh module..."
        link_file "zshrc" ".zshrc"
        echo_success "Zsh module linked!"
        ;;
    *)
        echo "Usage: ./link-module.sh [git|vim|zsh]"
        exit 1
        ;;
esac
