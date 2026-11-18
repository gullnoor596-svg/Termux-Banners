
show_welcome() {
    command clear

    spin='-\|/'
    total=30

    printf '\n\e[1;31m🌹 Starting Gullkhan Terminal...\e[0m\n\n'

    for ((i=0; i<total; i++)); do
        frame=${spin:i%${#spin}:1}
        percent=$(((i+1)*100/total))

        printf '\r\e[1;32m  Loading... %s  %3d%%\e[0m' \
            "$frame" "$percent"

        sleep 0.1
    done

    printf '\r\e[1;32m  Done! ✔ System Ready.       \e[0m\n'
    printf '\e[1;36m  Welcome back, Gullkhan! 💻\e[0m\n\n'
}

# AUTO START
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
