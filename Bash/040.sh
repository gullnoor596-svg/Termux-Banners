
show_welcome() {
    command clear

    printf '\n\e[1;33m  Loading Gullkhan Terminal...\e[0m\n\n'

    total=20

    for ((i=1; i<=total; i++)); do
        filled=$(printf '%*s' "$i" '' | tr ' ' '#')
        empty=$(printf '%*s' "$((total-i))" '')

        percent=$((i * 5))

        printf '\r\e[1;32m  [%s%s]\e[0m %3d%%' \
            "$filled" "$empty" "$percent"

        sleep 0.1
    done

    printf '\n\n'
    printf '\e[1;32m  ✔ Done! System Ready.\e[0m\n'
    printf '\e[1;36m  Welcome back, Gullkhan! 💻\e[0m\n\n'
}

# AUTO START
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
