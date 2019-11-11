# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export REACT_EDITOR=atom
export EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right
POWERLEVEL9K_DIR_HOME_BACKGROUND='038'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='038'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='038'
POWERLEVEL9K_DIR_ETC_BACKGROUND='038'
POWERLEVEL9K_VCS_HIDE_TAGS="true"
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

ZSH_DISABLE_COMPFIX="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  autojump
  colored-man-pages 
  z
  zsh-completions
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/opt/facebook/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/wenjingw/devtools/buck/bin:/usr/local/git/bin:/usr/local/munki:/usr/local/ant/bin:/Users/wenjingw/devtools/arcanist/bin:/Users/wenjingw/devtools/buck/bin/buck:/Users/wenjingw/fbobjc-hg/Users/jsh/Verve/bin:/opt/android_sdk/tools:/opt/android_sdk/platform-tools:/opt/homebrew/bin:~/.config/yarn/global/node_modules/jscodeshift/bin"
# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# [autojump] Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember to source the file to update your current session):
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconfig="vim ~/.zshrc"
alias sz="source ~/.zshrc"

#alias ohmyzsh="mate ~/.oh-my-zsh"
alias omzd='vim ~/.oh-my-zsh/lib/directories.zsh'
alias ls='ls -G'

alias macdev='open ~/git/common/tools/scripts/MacDevSync.app'
# dev server
alias dev='et -c "tmux -CC a" -x devvm734.atn5.facebook.com:8080' 
alias sb='et -c "tmux -CC a" -x devvm1957.prn3.facebook.com:8080' 
alias mosh_dev='mosh -6 devvm734.atn5.facebook.com' 
alias mosh_sb='mosh -6 devvm1957.prn3.facebook.com' 
alias myip='ipconfig getifaddr en0'
alias ssh_dev='ssh devvm734.atn5.facebook.com' 
alias ssh_sb='ssh devvm1957.prn3.facebook.com'
alias ssh-add-github='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_rsa'

# git-number script alias
alias gnn="git number --column"
alias gn="git number"

# Xcode clean
alias rmderiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias duderiveddata='du -hd 0 ~/Library/Developer/Xcode/DerivedData/*'

alias rmhgcache='rm -rf ~/.hgcache'
alias duhgcache='du -hd 0 ~/.hgcache/'

#watchman
alias wmclear='watchman watch-del-all'

#ama
alias reverseadb='adb reverse tcp:8081 tcp:8081'
alias adblogcat='adb logcat'

# jellyfish
alias jfrebase='jf submit --stack -m "rebase"'
alias jfs='jf submit'

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# added by setup_fb4a.sh
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
export PATH=${PATH}:${ANDROID_SDK}/tools:${ANDROID_SDK}/platform-tools:
export PATH=./node_modules/.bin:$PATH

export NVM_DIR="/Users/wenjingw/.nvm"
export REACT_EDITOR=atom
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias sshgit='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_rsa'

export PATH=/opt/facebook/hg/bin:$PATH
export PATH=/usr/local/bin/:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "/Users/wenjingw/.scm_breeze/scm_breeze.sh" ] && source "/Users/wenjingw/.scm_breeze/scm_breeze.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

