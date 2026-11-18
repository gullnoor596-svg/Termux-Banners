
#!/usr/bin/env bash
# 🐱 Gullkhan Cat Banner
# Author: Noor Gull

GREEN="\033[32m"
RESET="\033[0m"
BOLD="\033[1m"

show_cat() {
    command clear

    printf "${GREEN}${BOLD}"
    cat <<'EOF'
        .-"""-.
       / .===. \
       \/ 6 6 \/
       ( \___/ )
 __ooo__\_____/__ooo__
(                      )
 )      Terminal       (
(______________________).
EOF
    printf "${RESET}"
}

# Startup
show_cat

# CTRL + L
bind -x '"\C-l": show_cat'
