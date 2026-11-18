
#!/usr/bin/env bash
# 💚 Gullkhan Hacker Terminal
# Author: Noor Gull

# Colors
RESET='\033[0m'
BOLD='\033[1m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'

show_welcome() {
    command clear

    # Cat Banner
    printf '%b\n' "${GREEN}${BOLD}"
    cat <<'EOF'
        .-"""-.
       / .===. \
       \/ 6 6 \/
       ( \___/ )
 __ooo__\_____/__ooo__
(                      )
 )   WELCOME TO TERMUX  (
(______________________).
EOF

    printf '%b\n' "${RESET}"

    # System Information
    user=$(whoami)
    today=$(date "+%A, %d %B %Y")

    # Box Width
    width=48
    printf -v border '%*s' "$width" ''
    border=${border// /─}

    # Top Border
    printf '%b\n' "${BLUE}┌${border}┐${RESET}"

    # User Row
    printf -v row "%-${width}s" "User : $user"
    printf '%b\n' "${BLUE}│${GREEN}${row}${BLUE}│${RESET}"

    # Date Row
    printf -v row "%-${width}s" "Date : $today"
    printf '%b\n' "${BLUE}│${CYAN}${row}${BLUE}│${RESET}"

    # Terminal Row
    printf -v row "%-${width}s" "Terminal Ready - Hack the Matrix!"
    printf '%b\n' "${BLUE}│${RED}${row}${BLUE}│${RESET}"

    # Bottom Border
    printf '%b\n' "${BLUE}└${border}┘${RESET}"

    echo
}

# Terminal Startup
show_welcome

# CTRL + L Override
bind -x '"\C-l": show_welcome'
