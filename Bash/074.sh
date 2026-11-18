
# Cyan Drop Down Banner

show_welcome() {
    command clear

    cyan='\033[1;36m'
    reset='\033[0m'

    printf "${cyan}"
    cat <<'EOF'
▬▬▬.◙.▬▬▬
═▂▄▄▓▄▄▂
◢◤ █▀▀████▄▄▄◢◤
█▄ █ █▄ ███▀▀▀▀▀▀╬
◥█████◤
══╩══╩═
╬═╬
╬═╬
╬═╬    Just dropped down to say
╬═╬    *add text here*
╬═╬
╬═╬☻/
╬═╬/▌
╬═╬/  \
EOF
    printf "${reset}\n"
}

show_welcome

# Ctrl + L to show banner again
bind -x '"\C-l": show_welcome'
