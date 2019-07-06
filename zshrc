# Path to your oh-my-zsh installation.
export ZSH=/Users/wenjingw/.oh-my-zsh
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
alias dev='et -c="tmux -CC a" -x devvm2930.frc2.facebook.com:8080' 
#alias sb='et -c="tmux -CC a" -x devvm724.atn1.facebook.com:8098' 
alias sb='et -c="tmux -CC a" -x devvm1957.prn3.facebook.com:8080' 
alias mosh_dev='mosh -6 devvm2930.frc2.facebook.com' 
#alias mosh_sb='mosh -6 devvm724.atn1.facebook.com' 
alias mosh_sb='mosh -6 devvm1957.prn3.facebook.com' 
alias myip='ipconfig getifaddr en0'
alias ssh_dev='ssh devvm2930.frc2.facebook.com' 
#alias ssh_sb='ssh devvm724.atn1.facebook.com' 
alias ssh_sb='ssh devvm1957.prn3.facebook.com'
alias ssh-add-github='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_rsa'

# Xcode clean
alias rmderiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias duderiveddata='du -hd 0 ~/Library/Developer/Xcode/DerivedData/*'

alias rmhgcache='rm -rf ~/.hgcache'
alias duhgcache='du -hd 0 ~/.hgcache/'

# GrahpQL schema
alias quicklog_update='~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Libraries/QuickPerformanceLogger/quicklog_update.sh'
alias ragequit='buck kill; pkill flow; watchman watch-del-all'

alias openWilde='open ~/fbsource/fbobjc/Apps/Wilde/Facebook/Facebook.xcworkspace'
alias openMadMan='open ~/fbsource/fbobjc/Apps/MAdMan/MAdMan.xcworkspace'
alias openCatalyst='open ~/fbsource/fbobjc/Apps/Internal/Catalyst/Catalyst.xcworkspace'
alias openMadManE2Etests='open ~/fbsource/fbobjc/EndToEndTests/Tests/MobileAdsManager/MobileAdsManager-E2ETests.xcworkspace'
alias openMobileLab-madman='open ~/fbsource/fbobjc/EndToEndTests/PerfTests/MAdMan/MAdManUITests.xcworkspace'

# arc 
alias focus-madman-device='arc focus --buck-target adsmanager --device'
alias focus-fbios-device='arc focus --buck-target fbios-no-extensions --device'
alias arcdepends='arc detect-depends'

# buck project
alias bpmadman_ml='buck project EndToEndTests/PerfTests/MAdMan:workspace --without-tests'
alias bpwilde_ml='buck project EndToEndTests/PerfTests/Facebook:workspace --without-tests'
alias bprojectfbios='buck project fbios --without-tests'
alias bpmadman='buck project adsmanager --without-tests'
alias bpcatalyst='buck project catalyst --without-tests'
alias bpmadman_e2e='buck project e2e-adsmanager'
alias bicatelyst='buck install -r catalyst'
alias bimadman="buck install --run adsmanager"
#alias bimadman_udid='buck install -r adsmanager --udid 22935FB4-DB6C-4220-B60B-02F9AA3A0D8A'
alias bimadman_devicearmv7="buck install -r adsmanager#iphoneos-armv7"
alias bimadman_devicearm64="buck install -r adsmanager#iphoneos-arm64"
alias bimadman_deviceproduction="buck install -r adsmanager#iphoneos-armv7 --config user.sandcastle_build_mode=production"
alias bimadman_deviceprofile="buck install -r adsmanager#iphoneos-armv7 --config user.sandcastle_build_mode=profile"
alias bimadman_local="buck install -r adsmanager --config user.sandcastle_build_mode=local"
alias bimadman_release="buck install -r adsmanager --config user.sandcastle_build_mode=release"
alias bimadman_development="buck install -r adsmanager --config user.sandcastle_build_mode=development"
alias bimadman_production="buck install -r adsmanager --config user.sandcastle_build_mode=production"
alias bimadman_6="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6'"
alias bimadman_6s="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6s'"
alias bimadman_6plus="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6 Plus'"
alias bimadman_6splus="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6s Plus'"

alias fixiosdevicebuckbuild='sudo chmod 777 /var/db/lockdown'

# js1 alias
alias jsrun='js1 run'
alias jskill='js1 kill-all'
alias jsrestart='js1 kill-all; js1 run'

#watchman
alias wmclear='watchman watch-del-all'
alias rmnodemodules='rm -rf node_modules && npm install'
alias resetpackercache='npm start -- --reset-cache'

#ama
alias reverseadb='adb reverse tcp:8081 tcp:8081'
alias adblogcat='adb logcat'
alias jtadsmanager='js1 jest ~/fbsource/xplat/js/RKJSModules/Apps/AdsManager'
alias flowmadman='flow ~/xplat/js/RKJSModules/Apps/AdsManager'
alias wildejsdeps="~/fbsource/xplat/js/packager-cli.sh dependencies --entry-file ~/fbsource/Libraries/FBReactKit/js/RKJSModules/Apps/Wilde/WildeBundle.js --platform ios --transformer ~/fbsource/xplat/js/server/babelTransformer.js --output ~/fbobjc/wildejsdeps.txt"
alias jsdependency="~/fbsource/xplat/js/packager-cli.sh dependencies --platform ios --transformer ~/fbsource/xplat/js/server/babelTransformer.js --output ~/fbsource/xplat/jsdeps.txt --entry-file"

#codemod
alias jscmlogger='jscodeshift --parser='flow' -t ~/js-codemod/transforms/migrate-ama-logger.js'
alias jscmama='jscodeshift --parser='flow' -t ~/js-codemod/transforms/ama-add-ama-type-annotation.js'
alias jscodeshift_es6='jscodeshift -t ~/react-codemod/transforms/class.js --mixin-module-name=react-addons-pure-render-mixin --flow=true --pure-component=true --remove-runtime-proptypes=false'
alias jscm-pure-component='jscodeshift -t ~/react-codemod/transforms/pure-component.js'
alias jshiftlogger='jscodeshift --parser='flow' -t ~/git/js-codemod/transforms/migrate-ama-logger.js'
alias jshiftama='jscodeshift --parser='flow' -t ~/git/js-codemod/transforms/ama-add-ama-type-annotation.js'
alias jshiftes6='jscodeshift -t ~/git/react-codemod/transforms/class.js --mixin-module-name=react-addons-pure-render-mixin --flow=true --pure-component=true --remove-runtime-proptypes=true'
alias jshiftpure='jscodeshift -t ~/git/react-codemod/transforms/pure-component.js'
alias jshiftproptypes='jscodeshift -t ~/git/react-codemod/transforms/React-PropTypes-to-prop-types.js'

# jellyfish
alias jfrebase='jf submit --stack -m "rebase"'
alias jfs='jf submit'

# mobile config
alias mc='js1 build mobile-config'
alias mc_ios='./Libraries/FBMobileConfig/Tools/download_definition.sh'
alias mc_android='./scripts/mobileconfig-refresh.sh'

#hg alias
alias hwilde="hg book --remote | grep -E ' remote/fb(android|objc)/releases/release-fb(android|ios)-[0-9]' | cut -d ' ' -f 4 | sort -r | rev | sed -e 's/-/ /' | uniq -f 1 | rev | sed -e 's/ /-/'"
alias hgdaydiff="hg log -r 'last(::. & not date(-1))'"
alias hg2daydiff="hg log -r 'last(::. & not date(-2))'"
alias hg3daydiff="hg log -r 'last(::. & not date(-3))'"
alias hgweekdiff="hg log -r 'last(::. & not date(-7))'"
alias hgbiweekdiff="hg log -r 'last(::. & not date(-14))'"
alias hg3weekdiff="hg log -r 'last(::. & not date(-21))'"
alias hgmonthdiff="hg log -r 'last(::. & not date(-28))'"
alias hgbimonthdiff="hg log -r 'last(::. & not date(-56))'"
alias hgmadman="hg book --remote | grep -E ' remote/fb(android|objc)/releases/release-(madman|fbios)-[0-9]' | cut -d ' ' -f 4 | sort -r | rev | sed -e 's/-/ /' | uniq -f 1 | rev | sed -e 's/ /-/'"
alias hglog7="hg log -r 'last(::. & not date(-7))'"

alias highlightjs="pbpaste | highlight --syntax js --style monokai --out-format rtf --font monaco --font-size 26 | pbcopy"
alias highlightobjc="pbpaste | highlight --syntax objc --style monokai --out-format rtf --font monaco --font-size 26 | pbcopy"
export AMA_HOME=~/fbsource/xplat/js/RKJSModules/Apps/AdsManager/
export MOBILE_LAB_FBOBJC=~/fbobjc/EndToEndTests/PerfTests
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

#JS Pyramidion
export FBOBJC=~/fbsource/fbobjc/
export I_JSBUDDY_HOME=$FBOBJC/EndToEndTests/Pyramdion/
export FBANDROID=~/fbsource/fbandroid/
export A_JSBUDDY_HOME=$FBANDROID/java/com/facebook/testing/buddy/js/

# Android Emulator
alias start_emulator='~/fbsource/fbandroid/scripts/start_emulator'

# added by setup_fb4a.sh
export FB_OBJC="~/fbsource/fbobjc"
export FBANDROID_DIR=/Users/wenjingw/fbsource/fbandroid
alias quicklog_update=/Users/wenjingw/fbsource/fbandroid/scripts/quicklog/quicklog_update.sh
alias qlu=quicklog_update

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

# PMTD trunk deploy notes START
export ECTL_HOME=~/erl
export PROJ=pmtd
export SRC_TREE=~/git
export MIRRORS=$SRC_TREE/server/erl/$PROJ/mirrors

alias pd_ls_diffs="git log --reverse master --not stable/$PROJ -- wa/ wa_crypto/ pmtd/"
alias pd_load_order="git log --reverse master --not stable/$PROJ -- wa/ wa_crypto/ pmtd/ | ../tools/bin/deploy_instructions.py pmtd"
alias pd_ls_modified="git --no-pager diff --no-ext-diff --stat origin/stable/$PROJ -- wa/ wa_crypto/ $PROJ/"

alias pd_make_mirror-upgrade='make --jobs=10 mirror-upgrade'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias gnn="git number --column"
alias gn="git number"
