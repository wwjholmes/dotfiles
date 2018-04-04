# Path to your oh-my-zsh installation.
export ZSH=/Users/wenjingw/.oh-my-zsh
export REACT_EDITOR=atom
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

export PATH="/opt/facebook/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/wenjingw/devtools/buck/bin:/usr/local/git/bin:/usr/local/munki:/usr/local/ant/bin:/Users/wenjingw/devtools/arcanist/bin:/Users/wenjingw/devtools/buck/bin/buck:/Users/wenjingw/fbobjc-hg/Users/jsh/Verve/bin:/opt/android_sdk/tools:/opt/android_sdk/platform-tools:/opt/homebrew/bin"
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
alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias ls='ls -G'
alias myip='ipconfig getifaddr en0'
alias remotePro1='sudo cperun -t chef'
alias remotePro2='ssh -L 5901:wenjingw-pro.dhcp.thefacebook.com:5900 wenjingw@wenjingw-pro.dhcp.thefacebook.com'
alias remotePro3='open vnc://localhost:5901'
#alias dev1='ssh dev2064.prn2.facebook.com'
alias dev1='ssh devvm009.ftw1.facebook.com'
alias msdev1='mosh -6 devvm009.ftw1.facebook.com'
alias arclint-apply-patches='arc lint --apply-patches'
alias arcdiff='cd ~/fbsource && arc diff'
alias arcdepends='arc detect-depends'
alias arcpatch-s='arc newpatch --skip-dependencies'
alias arcpatch-a='arc newpatch --apply-dependencies'
alias ade='arc diff --edit'
alias ad='arc diff'
alias rmderiveddata='rm -rf ~/Library/Developer/Xcode/DerivedData/*'
alias duderiveddata='du -hd 0 ~/Library/Developer/Xcode/DerivedData/*'
alias rmhgcache='rm -rf ~/.hgcache'
alias duhgcache='du -hd 0 ~/.hgcache/'
alias retrieveSchema.sh='~/xplat/graphql/retrieveSchema.sh'
alias retrieveSchema.sh_wenjingw.sb='~/xplat/graphql/retrieveSchema.sh -s wenjingw.sb.facebook.com'
alias update_graphql_schema.sh='./scripts/update_graphql_schema.sh'
alias quicklog_update='~/fbobjc/Libraries/FBReactKit/js/RKJSModules/Libraries/QuickPerformanceLogger/quicklog_update.sh'
alias fbmogen.sh='Libraries/FBDataModel/FBDataModel/fbmogen.sh'
alias genAnnouncers='./Tools/object-generation/exec/generateAnnouncers'
alias genValues='./Tools/remodel/bin/generateValues'
alias buildctscanapp='sh Tools/CTScan/BuildCTScanApp.sh'
alias pngcrush='~/fbobjc/Tools/pngcrush/pngcrush.sh'
alias pngcommit='~/fbobjc/Tools/pngcrush-commit.sh'
alias importJSModules='~/fbobjc/Libraries/FBReactKit/importStaticJSModules.py wenjingw.sb.facebook.com'
alias vpnsucks='sudo route add 192.168.56.0/24 -interface vboxnet0'
alias ragequit='buck kill; pkill flow; watchman watch-del-all'

alias openWilde='open ~/fbsource/fbobjc/Apps/Wilde/Facebook/Facebook.xcworkspace'
alias openMadMan='open ~/fbsource/fbobjc/Apps/MAdMan/MAdMan.xcworkspace'
alias openCatalyst='open ~/fbsource/fbobjc/Apps/Internal/Catalyst/Catalyst.xcworkspace'
alias openMadManE2Etests='open ~/fbsource/fbobjc/EndToEndTests/Tests/MobileAdsManager/MobileAdsManager-E2ETests.xcworkspace'
alias openMobileLab-madman='open ~/fbsource/fbobjc/EndToEndTests/PerfTests/MAdMan/MAdManUITests.xcworkspace'
alias openImportJSModules.py='subl ~/fbsource/fbobjc/Libraries/FBReactKit/importStaticJSModules.py'

#Tools
alias fetchctscanlog='Tools/CTScan/CTScanDeviceManager -u eb1223beb0852d5a9d775a02da628e7a28d0d748 -a com.facebook.madman.internal --get /tmp/ctscan.txt ~/ctscan.txt'

# arc focus
alias focus-madman-device='arc focus --buck-target adsmanager --device'
alias focus-fbios-device='arc focus --buck-target fbios-no-extensions --device'

# buck project
alias buckproject-mobilelab-madman='buck project EndToEndTests/PerfTests/MAdMan:workspace --without-tests'
alias buckproject-mobilelab-facebook='buck project EndToEndTests/PerfTests/Facebook:workspace --without-tests'
alias buckprojectfbios='buck project fbios --without-tests'
alias buckprojectiosmadman='buck project adsmanager --without-tests'
alias buckprojectioscatalyst='buck project catalyst --without-tests'
alias buckprojecte2e-adsmanager='buck project e2e-adsmanager'
alias buckcatalyst='buck install -r catalyst'
alias buckiosmadman="buck install --run adsmanager"
alias buckiosmadman_udid='buck install -r adsmanager --udid 22935FB4-DB6C-4220-B60B-02F9AA3A0D8A'
alias buckiosmadmandevicearmv7="buck install -r adsmanager#iphoneos-armv7"
alias buckiosmadmandevicearm64="buck install -r adsmanager#iphoneos-arm64"
alias buckiosmadmandeviceproduction="buck install -r adsmanager#iphoneos-armv7 --config user.sandcastle_build_mode=production"
alias buckiosmadman_local="buck install -r adsmanager --config user.sandcastle_build_mode=local"
alias buckiosmadman_release="buck install -r adsmanager --config user.sandcastle_build_mode=release"
alias buckiosmadman_development="buck install -r adsmanager --config user.sandcastle_build_mode=development"
alias buckiosmadman_production="buck install -r adsmanager --config user.sandcastle_build_mode=production"
alias buckandroidmadman='buck install -r adsmanager'
alias buckiosmadman_6="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6'"
alias buckiosmadman_6s="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6s'"
alias buckiosmadman_6plus="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6 Plus'"
alias buckiosmadman_6splus="buck install --run adsmanager#iphonesimulator-i386 --simulator-name 'iPhone 6s Plus'"

alias rnios.sh='~/fbsource/fbobjc/Libraries/FBReactKit/fbrnios.sh'
alias rnandroid.sh='~/fbsource/fbobjc/Libraries/FBReactKit/fbrnandroid.sh'
alias randroid='~/fbsource/fbandroid/java/com/facebook/catalyst/runServerHere.sh'
alias rios='~/fbsource/fbobjc/Libraries/FBReactKit/runServerHere.sh'
alias fixiosdevicebuckbuild='sudo chmod 777 /var/db/lockdown'

#fjs-fbobjc -r wenjingw.sb.facebook.com relay-fb
alias fjs-fbobjc='~/fbobjc/Libraries/FBReactKit/js/scripts/.fjs-fbobjc.sh'
alias jsrun='js1 run'
alias jskill='js1 kill-all'
alias jsrestart='js1 kill-all; js1 run'
#watchman
alias wmclear='watchman watch-del-all'
alias rmnodemodules='rm -rf node_modules && npm install'
alias resetpackercache='npm start -- --reset-cache'
alias node-check-install='node ~/fbobjc/Libraries/FBReactKit/js/nodeModules.js check-install'

#ama
alias reverseadb='adb reverse tcp:8081 tcp:8081'
alias adblogcat='adb logcat'
alias jtadsmanager='js1 jest ~/fbsource/xplat/js/RKJSModules/Apps/AdsManager'
alias flowmadman='flow ~/xplat/js/RKJSModules/Apps/AdsManager'
alias flowpg='flow check ~/xplat/js/RKJSModules/Apps/Playground'
alias cdandroidjs='cd ~/fbandroid/java/com/facebook/catalyst/js'
alias cdiosjs='cd ~/fbobjc/Libraries/FBReactKit/js'
alias cdrngithub='cd ~/fbobjc/Libraries/FBReactKit/js/react-native-github'
alias updatenodemodules='node ../nodeModules.js install'
alias wildejsdeps="~/fbsource/xplat/js/packager-cli.sh dependencies --entry-file ~/fbsource/Libraries/FBReactKit/js/RKJSModules/Apps/Wilde/WildeBundle.js --platform ios --transformer ~/fbsource/xplat/js/server/babelTransformer.js --output ~/fbobjc/wildejsdeps.txt"
alias jsdependency="~/fbsource/xplat/js/packager-cli.sh dependencies --platform ios --transformer ~/fbsource/xplat/js/server/babelTransformer.js --output ~/fbsource/xplat/jsdeps.txt --entry-file"

alias cddownstream='cd ~/fbobjc/Libraries/FBReactKit/js/RKJSModules/downstream'
alias rmtmpdirreactpackager='rm -rf $TMPDIR/react-packager-'

#js1 
alias js1up_sb='js1 upgrade www-constants -r interngraph.wenjingw.sb.facebook.com'
alias jru='js1 relay upgrade'
alias jru_basic_only='js1 relay upgrade --basic-only'
alias jrc_files='js1 relay check files'
alias jrc_directory='js1 relay check directory'
alias js_relay_build_facebook='js1 build relay --project facebook'
alias jscmlogger='jscodeshift --parser='flow' -t ~/js-codemod/transforms/migrate-ama-logger.js'
alias jscmama='jscodeshift --parser='flow' -t ~/js-codemod/transforms/ama-add-ama-type-annotation.js'
alias jscodeshift_es6='jscodeshift -t ~/react-codemod/transforms/class.js --mixin-module-name=react-addons-pure-render-mixin --flow=true --pure-component=true --remove-runtime-proptypes=false'
alias mc='js1 build mobile-config'
#codemod
alias jscm-pure-component='jscodeshift -t ~/react-codemod/transforms/pure-component.js'

# jellyfish
alias jfrebase='jf submit --stack -m "rebase"'
alias jfs='jf submit'
#hg alias
alias purge_rej='hg purge "glob:**/*.rej" --all'
alias purge_orig='hg purge "glob:**/*.orig" --all'
alias hd='hg diff'
alias hu='hg update'
alias hs='hg sl'
alias hss='hs ssl'
alias ht='hg st'
alias ha='hg amend'
alias reamend='hg amend --rebase'
alias fixamend='hg amend --fixup'
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

