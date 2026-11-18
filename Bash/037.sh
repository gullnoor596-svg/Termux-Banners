
show_welcome() {
    command clear

    name="Gullkhan"
    message="White text on blue background"
    neon="Neon $name"

    # Blue welcome box
    printf '\n\e[1;37;44m %s \e[0m\n\n' "$message"

    # Neon typing animation
    printf '\e[38;5;46m'
    for ((i=0; i<${#neon}; i++)); do
        printf '%s' "${neon:i:1}"
        sleep 0.05
    done
    printf '\e[0m\n\n'

    # Status
    printf '\e[1;32m[✔] Terminal Ready!\e[0m\n\n'
}

# Startup
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
