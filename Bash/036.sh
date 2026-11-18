
show_welcome() {
    command clear

    name="Gullkhan"
    width=40

    # Top border
    printf '\n\e[1;32m+'
    printf '%*s' "$width" '' | tr ' ' '-'
    printf '+\n'

    # Header
    printf '|                  BOOT                  |\n'

    # Loading bar
    printf '\e[1;32m+'
    printf '%*s' "$width" '' | tr ' ' '-'
    printf '+\e[0m\n'

    printf '\e[1;33m| Booting: [\e[0m'

    for ((i=1; i<=20; i++)); do
        printf '\e[1;32m█\e[0m'
        sleep 0.06
    done

    printf '\e[1;33m] 100%%\e[0m\n'

    # Bottom border
    printf '\e[1;32m+'
    printf '%*s' "$width" '' | tr ' ' '-'
    printf '+\e[0m\n\n'

    # Boot logs
    LOGS=(
        "Initializing kernel modules..."
        "Mounting virtual filesystem..."
        "Starting network interface..."
        "Auth token verified for $name"
        "Loading terminal UI..."
        "Applying system configurations..."
        "Secure connection initialized"
    )

    for l in "${LOGS[@]}"; do
        printf '\e[1;90m[OK]\e[0m \e[1;36m%s\e[0m\n' "$l"
        sleep 0.25
    done

    printf '\n\e[1;32m✔ Welcome, %s — System ready.\e[0m\n\n' "$name"
}

# Startup
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
