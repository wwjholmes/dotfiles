. /home/wenjingw/local/whatsapp/server/erl/tools/waserver_bashrc

#if [[ ! $TMUX && -t 0 && $TERM_PROGRAM != nuclide ]]; then
#    tmux $TMUX_OPTIONS new-session -As auto
#fi

if [ -d "$HOME/.local/vim/bin/" ] ; then
    PATH="$HOME/.local/vim/bin/:$PATH"
fi

alias gn='git number --column'
alias ga='git number add'

alias er='erlcluster'
alias pinfo='erlcanary info pmtdev'
alias cinfo='erlcanary info cdev'

sfcon() {
    local region="${2:-frc}"
    local task="${3:-1}"
    local duration="${4:-1}"
    sf canary --version "wa.erl.pmtd:$1" --tw-job priv_"$region"/whatsapp/pmtdev --tasks $task  --duration "$duration"day 
}

