show_welcome() {
    command clear

    name="Terminal"
    bar="▰▰▰▰▰▰▰▰▰▰"

    echo
    for ((i=1; i<=10; i++)); do
        printf '\r\e[1;33mLoading %s... %s\e[0m %3d%%' \
        "$name" "${bar:0:i}" "$((i*10))"
        sleep 0.2
    done

    printf '\n\n'
    printf '\e[1;32m✅ Welcome Gullkhan! All systems online.\e[0m\n\n'
}

# Startup
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'