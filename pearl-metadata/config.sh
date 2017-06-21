export DOT_TMUX_PKGDIR="$PEARL_PKGDIR"

if [ -n "$TMUX" ]; then
    # set TERM according to the parent terminal's TERM (see etc/tmux.conf)
    case "$TERM" in
        *-256color) export TERM=xterm-256color ;;
        *) export TERM=screen ;;
    esac

    # Home/End keys in tmux
    bind '"\e[1~":"\eOH"'
    bind '"\e[4~":"\eOF"'
fi

# vim: ft=sh