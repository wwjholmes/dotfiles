#!/bin/bash

# --- Helper Functions ---
echo_info() { echo -e "\033[1;34m[INFO]\033[0m $1"; }
echo_success() { echo -e "\033[1;32m[SUCCESS]\033[0m $1"; }

# --- 1. Homebrew ---
if ! command -v brew &> /dev/null; then
    echo_info "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo_info "Homebrew is already installed. Updating..."
    brew update
fi

# --- 2. Oh My Zsh ---
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo_info "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo_info "Oh My Zsh is already installed."
fi

# --- 3. Software (Formulas) ---
echo_info "Installing CLI tools..."
FORMULAS=(fzf autojump)
for formula in "${FORMULAS[@]}"; do
    if ! brew list --formula "$formula" &> /dev/null; then
        brew install "$formula"
    else
        echo_info "$formula is already installed."
    fi
done

# --- 4. Software (Casks/Apps) ---
echo_info "Installing Applications..."
# Spectacle is deprecated, using Rectangle instead
# Format: "cask_name:App Name"
CASKS=(
    "alfred:Alfred 5.app"
    "iterm2:iTerm.app"
    "rectangle:Rectangle.app"
    "wechat:WeChat.app"
)

for entry in "${CASKS[@]}"; do
    IFS=":" read -r cask app_name <<< "$entry"
    if [ ! -d "/Applications/$app_name" ] && ! brew list --cask "$cask" &> /dev/null; then
        brew install --cask "$cask"
    else
        echo_info "$cask (or $app_name) is already installed."
    fi
done

# Note: sogouinput is not currently in the main brew repo.
# brew install --cask sogouinput 2>/dev/null || echo_info "Sogou Input cask not found, skipping."

# --- 5. Zsh Plugins & Themes ---
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

install_plugin() {
    local name=$1
    local url=$2
    local path="$ZSH_CUSTOM/plugins/$name"
    if [ ! -d "$path" ]; then
        echo_info "Installing plugin: $name"
        git clone "$url" "$path"
    else
        echo_info "Plugin $name is already installed."
    fi
}

install_plugin "zsh-completions" "https://github.com/zsh-users/zsh-completions"
install_plugin "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting.git"
install_plugin "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions"

# Powerlevel10k (Successor to Powerlevel9k)
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo_info "Installing Powerlevel10k theme..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

# --- 6. Powerline Fonts ---
if [ ! -d "$HOME/Library/Fonts" ] || [ -z "$(ls -A "$HOME/Library/Fonts" | grep -i "Powerline")" ]; then
    echo_info "Installing Powerline fonts..."
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts && ./install.sh && cd .. && rm -rf fonts
else
    echo_info "Powerline fonts appear to be installed."
fi

echo_success "Setup complete!"
