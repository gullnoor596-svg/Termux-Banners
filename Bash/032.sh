
#!/usr/bin/env bash
# 💚 Gullkhan Termux Welcome

show_welcome() {
    command clear

    printf '\e[1;90m╭────────────────────────────────────────────╮\n'
    printf '│  \e[1;37mWelcome to \e[1;36mTermux\e[1;37m — Power in your hands!\e[1;90m  │\n'
    printf '╰────────────────────────────────────────────╯\e[0m\n'

    echo
}

show_welcome
bind -x '"\C-l": show_welcome'