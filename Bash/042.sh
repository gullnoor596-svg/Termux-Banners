
show_welcome() {
    command clear

    text1="MY NAME IS GULLKHAN"
    text2="I AM LEARNING KALI LINUX"

    printf '\n\e[1;31mInitializing System...\e[0m\n'
    sleep 1

    # First line - Cyan typing
    printf '\n\e[1;36m'
    for ((i=0; i<${#text1}; i++)); do
        printf '%s' "${text1:i:1}"
        sleep 0.1
    done
    printf '\e[0m\n'

    sleep 0.5

    # Second line - Blue typing
    printf '\e[1;34m'
    for ((i=0; i<${#text2}; i++)); do
        printf '%s' "${text2:i:1}"
        sleep 0.1
    done
    printf '\e[0m\n\n'

    # Success message
    printf '\e[1;32m✔ Access Granted — Welcome, Gullkhan.\e[0m\n\n'
}

# AUTO START
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
