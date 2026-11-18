
#!/usr/bin/env bash
# 💚 Gullkhan Welcome Banner
# Author: Noor Gull

# Colors
RESET='\033[0m'
BOLD='\033[1m'
GREEN='\033[32m'
CYAN='\033[96m'
YELLOW='\033[93m'
RED='\033[91m'

# Welcome Banner Function
show_welcome() {
    command clear

    printf '%b' "${GREEN}${BOLD}"

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

    # Left Aligned System Information
    printf '%b\n' "${CYAN}${BOLD}[★] SYSTEM READY [★]${RESET}"
    printf '%b\n' "${GREEN}[★] USER: $(whoami)${RESET}"
    printf '%b\n' "${YELLOW}[★] DATE: $(date +"%d-%m-%Y %H:%M")${RESET}"
    printf '%b\n' "${CYAN}[★] DEVICE: $(uname -o)${RESET}"

    echo
}

# Terminal Startup
show_welcome

# CTRL + L Override
bind -x '"\C-l": show_welcome'
