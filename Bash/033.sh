show_welcome() {
    command clear

    message="Welcome to Termux 💻"

    printf '\e[1;90m╭────────────────────────╮\n'
    printf '\e[1;90m│ \e[1;37m'

    for ((i=0; i<${#message}; i++)); do
        printf '%s' "${message:$i:1}"
        sleep 0.05
    done

    printf '   \e[1;90m│\n'
    printf '\e[1;90m╰────────────────────────╯\e[0m\n\n'
}

show_welcome
bind -x '"\C-l": show_welcome'