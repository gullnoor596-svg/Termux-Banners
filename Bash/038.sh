
show_welcome() {
    command clear

    # DEVIL BANNER
    printf '\n\e[1;31m'
    cat <<'BANNER'
        ██████╗ ███████╗██╗   ██╗██╗██╗
        ██╔══██╗██╔════╝██║   ██║██║██║
        ██████╔╝█████╗  ██║   ██║██║██║
        ██╔═══╝ ██╔══╝  ╚██╗ ██╔╝██║██║
        ██║     ███████╗ ╚████╔╝ ██║███████╗
        ╚═╝     ╚══════╝  ╚═══╝  ╚═╝╚══════╝
BANNER

    printf '\e[0m\n'

    printf '\e[1;31m==============================================\e[0m\n'
    printf '\e[1;37m       😈  W E L C O M E   T O   H E L L  😈\e[0m\n'
    printf '\e[1;31m==============================================\e[0m\n'

    printf '\e[1;30m[\e[1;31m SYSTEM ONLINE \e[1;30m] [\e[1;31mHOST: \e[1;37mDEVIL-TERMUX\e[1;30m]\e[0m\n\n'

    # Animated startup logs
    logs=(
        "🔥 Initializing dark modules..."
        "💀 Loading terminal environment..."
        "😈 Preparing infernal shell..."
        "⚡ Starting terminal session..."
    )

    for log in "${logs[@]}"; do
        printf '\e[1;31m%s\e[0m\n' "$log"
        sleep 0.3
    done

    printf '\n\e[1;32m✅ Access Granted — Welcome back, Gullkhan!\e[0m\n\n'
}

# AUTO START
show_welcome

# CTRL + L SHORTCUT
bind -x '"\C-l": show_welcome'
