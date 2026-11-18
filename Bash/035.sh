
show_welcome() {
    command clear

    name="Gullkhan"
    message="Welcome to Termux $name"

    # Calculate box width
    width=$((${#message} + 4))

    # Top border
    printf '\n\e[1;90m╭'
    for ((j=0; j<width; j++)); do
        printf '─'
    done
    printf '╮\n'

    # Animated message
    printf '\e[1;90m│  \e[0m'

    for ((i=0; i<${#message}; i++)); do
        color=$((31 + i % 6))
        printf '\e[1;%sm%s\e[0m' "$color" "${message:$i:1}"
        sleep 0.05
    done

    printf '\e[1;90m  │\n'

    # Bottom border
    printf '╰'
    for ((j=0; j<width; j++)); do
        printf '─'
    done
    printf '╯\e[0m\n'

    # System status
    sleep 0.3
    printf '\n\e[1;32m[✔] System Loaded Successfully!\e[0m\n'
    printf '\e[1;36m[✔] Terminal Ready!\e[0m\n\n'
}

# Start automatically
show_welcome

# CTRL + L shortcut
bind -x '"\C-l": show_welcome'
