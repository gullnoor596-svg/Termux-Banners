
show_welcome() {
    command clear

    colors=(
        '\033[1;31m'
        '\033[1;33m'
        '\033[1;32m'
        '\033[1;36m'
        '\033[1;35m'
    )

    reset='\033[0m'
    delay=0.25

    banner='
        .-"""-.
       / .===. \
       \/ 6 6 \/
       ( \___/ )
 __ooo__\_____/__ooo__
(                      )
 )      Gullkhan       (
(______________________).
'

    # Animated color cycling
    for color in "${colors[@]}"; do
        printf '%b' "${color}${banner}${reset}"
        sleep "$delay"
        command clear
    done

    # Final display
    printf '\033[1;36m%s\033[0m\n' "$banner"
    printf '\033[1;32m  [✔] Welcome to Termux, Gullkhan!\033[0m\n\n'
}

# AUTO START
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
