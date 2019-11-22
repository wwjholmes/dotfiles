. /home/wenjingw/local/whatsapp/server/erl/tools/waserver_bashrc

if [[ ! $TMUX && -t 0 && $TERM_PROGRAM != nuclide ]]; then
    tmux $TMUX_OPTIONS new-session -As auto
fi

if [ -d "$HOME/.local/vim/bin/" ] ; then
    PATH="$HOME/.local/vim/bin/:$PATH"
fi
