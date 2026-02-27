# --- Path Configuration ---
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# --- Oh My Zsh Setup ---
export ZSH="$HOME/.oh-my-zsh"

# Theme (using Powerlevel10k)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard Plugins
plugins=(
  git
  autojump
  colored-man-pages 
  z
  zsh-completions
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source "$ZSH/oh-my-zsh.sh"

# --- Editor & Environment ---
export EDITOR='vim'
export LANG=en_US.UTF-8

# --- Useful Aliases ---
# Config/Shell
alias zconfig="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias omzd='vim ~/.oh-my-zsh/lib/directories.zsh'

# General Utility
alias ls='ls -G'
alias myip='ipconfig getifaddr en0'
alias sshgit='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_rsa'

# Git shortcuts (redundant but kept for workflow)
alias gnn="git number --column"
alias gn="git number"

# Development / Cleanup
alias rmderiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias duderiveddata='du -hd 0 ~/Library/Developer/Xcode/DerivedData/*'
alias wmclear='watchman watch-del-all'

# --- Tool Integrations ---
# [autojump]
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# [fzf]
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# [iterm2]
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# --- Local Overrides ---
# Load machine-specific settings if they exist
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
