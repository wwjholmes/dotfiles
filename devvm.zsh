#if [[ ! $TMUX && -t 0 && $TERM_PROGRAM != nuclide ]]; then
#    tmux $TMUX_OPTIONS new-session -As auto
#fi

alias gn='git number --column'
alias ga='git number add'
