# Path to your oh-my-zsh installation.
export ZSH=/Users/wenjingw/.oh-my-zsh
export EDITOR=vim

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(mercurial)

# User configuration

export PATH="/opt/facebook/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/wenjingw/devtools/buck/bin:/usr/local/git/bin:/usr/local/munki:/usr/local/ant/bin:/Users/wenjingw/devtools/arcanist/bin:/Users/wenjingw/devtools/buck/bin/buck:/Users/wenjingw/fbobjc-hg/Users/jsh/Verve/bin:/opt/android_sdk/tools:/opt/android_sdk/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='ls -G'
alias myip='ipconfig getifaddr en0'
#alias dev1='ssh dev2064.prn2.facebook.com'
alias dev1='ssh devvm15778.prn1.facebook.com'
alias dev2='ssh dev6268.prn2.facebook.com'
alias arcdiff='cd ~/fbsource && arc diff'
alias arcdepends='arc detect-depends'
alias rmderiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias duderiveddata='du -hd 0 ~/Library/Developer/Xcode/DerivedData/*'
alias rmhgcache='rm -rf ~/.hgcache'
alias duhgcache='du -hd 0 ~/.hgcache/'
alias retrieveSchema.sh='~/fbobjc/Libraries/FBGraphQL/FBGraphQL/retrieveSchema.sh'
alias retrieveSchema.sh_wenjingw.sb='~/fbobjc/Libraries/FBGraphQL/FBGraphQL/retrieveSchema.sh -s wenjingw.sb.facebook.com'
alias update_graphql_schema.sh='./scripts/update_graphql_schema.sh'
alias quicklog_update='~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Libraries/QuickPerformanceLogger/quicklog_update.sh'
alias fbmogen.sh='Libraries/FBDataModel/FBDataModel/fbmogen.sh'
alias genAnnouncers='./Tools/object-generation/exec/generateAnnouncers'
alias genValues='./Tools/remodel/bin/generateValues'
alias buildctscanapp='sh Tools/CTScan/BuildCTScanApp.sh'
alias pngcrush='~/fbobjc/Tools/pngcrush/pngcrush.sh'
alias allpngcrush='~/fbobjc/Apps/Wilde/Tools/pngcrush-commit.sh'
alias importJSModules='~/fbobjc/Libraries/FBReactKit/importStaticJSModules.py wenjingw.sb.facebook.com'
alias vpnsucks='sudo route add 192.168.56.0/24 -interface vboxnet0'
alias ragequit='buck kill; pkill flow; watchman watch-del-all'

alias openWilde='open ./Apps/Wilde/Facebook/Facebook.xcworkspace'
alias openMadMan='open ./Apps/MAdMan/MAdMan.xcworkspace'
alias openMadManE2Etests='open ./EndToEndTests/Tests/MobileAdsManager/MobileAdsManager-E2ETests.xcworkspace'
alias openImportJSModules.py='subl ~/fbobjc/Libraries/FBReactKit/importStaticJSModules.py'

alias buckprojectfbios='buck project fbios --without-tests'
alias buckprojectiosmadman='buck project adsmanager --without-tests'
alias buckprojecte2e-adsmanager='buck project e2e-adsmanager'
alias buckcatalyst='buck install -r catalyst'
alias buckiosmadman='buck install -r adsmanager'
alias buckiosmadmandevice="buck install -r adsmanager#iphoneos-armv7"
alias buckandroidmadman='buck install -r adsmanager'
alias buckiosmadman_6="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6'"
alias buckiosmadman_6plus="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6 Plus'"

alias rnios.sh='~/fbobjc/Libraries/FBReactKit/fbrnios.sh'
alias rnandroid.sh='~/fbobjc/Libraries/FBReactKit/fbrnandroid.sh'
alias randroid='~/fbandroid/java/com/facebook/catalyst/runServerHere.sh'
alias rios='~/fbobjc/Libraries/FBReactKit/runServerHere.sh'

#fjs-fbobjc -r wenjingw.sb.facebook.com relay-fb
alias fjs-fbobjc='~/fbobjc/Libraries/FBReactKit/js/scripts/.fjs-fbobjc.sh'
#watchman
alias wmclear='watchman watch-del-all'
alias rmnodemodules='rm -rf node_modules && npm install'
alias resetpackercache='npm start -- --reset-cache'
alias node-check-install='node ~/fbobjc/Libraries/FBReactKit/js/nodeModules.js check-install'

#ama
alias reverseadb='adb reverse tcp:8081 tcp:8081'
alias adblogcat='adb logcat'
alias jt='~/fbobjc/Libraries/FBReactKit/jest --no-watchman'
alias jtadsmanager='~/fbobjc/Libraries/FBReactKit/jest --no-watchman ~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Apps/AdsManager'
alias flowmadman='flow ~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Apps/AdsManager'
alias flowpg='flow check ~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Apps/Playground'
alias cdandroidjs='cd ~/fbandroid/java/com/facebook/catalyst/js'
alias cdiosjs='cd ~/fbobjc/Libraries/FBReactKit/js'
alias cdrngithub='cd ~/fbobjc/Libraries/FBReactKit/js/react-native-github'
alias updatenodemodules='node ../nodeModules.js install'
alias wildejsdeps="~/fbsource/fbobjc/Libraries/FBReactKit/packager-cli.sh dependencies --entry-file ~/fbsource/fbobjc/Libraries/FBReactKit/js/RKJSModules/Apps/Wilde/WildeBundle.js --platform ios --transformer ~/fbsource/fbobjc/Libraries/FBReactKit/js/server/babelTransformer --output ~/fbobjc/wildejsdeps.txt"

alias cddownstream='cd ~/fbobjc/Libraries/FBReactKit/js/RKJSModules/downstream'
alias rmtmpdirreactpackager='rm -rf $TMPDIR/react-packager-'
#hg alias
alias hfixup='hg amend --fixup'
alias hamend='hg commit --amend'
alias hwilde="hg book --remote | grep -E ' remote/fb(android|objc)/releases/release-fb(android|ios)-[0-9]' | cut -d ' ' -f 4 | sort -r | rev | sed -e 's/-/ /' | uniq -f 1 | rev | sed -e 's/ /-/'"
alias hgdaydiff="hg log -r 'last(::. & not date(-1))'"
alias hg2daydiff="hg log -r 'last(::. & not date(-2))'"
alias hg3daydiff="hg log -r 'last(::. & not date(-3))'"
alias hgweekdiff="hg log -r 'last(::. & not date(-7))'"
alias hgbiweekdiff="hg log -r 'last(::. & not date(-14))'"
alias hgmonthdiff="hg log -r 'last(::. & not date(-28))'"
alias hgbimonthdiff="hg log -r 'last(::. & not date(-56))'"
alias hmadman="hg book --remote | grep -E ' remote/fb(android|objc)/releases/release-madman-[0-9]' | cut -d ' ' -f 4 | sort -r | rev | sed -e 's/-/ /' | uniq -f 1 | rev | sed -e 's/ /-/'"
alias hglog7="hg log -r 'last(::. & not date(-7))'"

alias highlightjs="pbpaste | highlight --syntax js --style monokai --out-format rtf --font monaco --font-size 26 | pbcopy"
alias highlightobjc="pbpaste | highlight --syntax objc --style monokai --out-format rtf --font monaco --font-size 26 | pbcopy"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# added by setup_fb4a.sh
export FB_OBJC="~/fbsource/fbobjc"
export ANDROID_SDK=/opt/android_sdk
export ANDROID_NDK_REPOSITORY=/opt/android_ndk
export ANDROID_HOME=${ANDROID_SDK}
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
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
