
#!/usr/bin/env bash
# 🧠 Gullkhan Termux Terminal
# Author: Noor Gull

# 🎨 Colors
RESET='\033[0m'
BOLD='\033[1m'
GREEN='\033[32m'
CYAN='\033[96m'
YELLOW='\033[93m'
RED='\033[91m'

# 🧠 System Banner Function
show_system() {

    command clear

    printf '%b\n' "${CYAN}${BOLD}"
    cat <<'EOF'
╔═══════════════════════════════════════╗
║         🧠  Termux Terminal  🧠       ║
╠═══════════════════════════════════════╣
║        .-"""-.                        ║
║       / .===. \                       ║
║       \/ 6 6 \/                       ║
║       ( \___/ )                       ║
║ __ooo__\_____/__ooo__                 ║
║(                      )               ║
║ )     System Online   (               ║
║(______________________).              ║
╚═══════════════════════════════════════╝
EOF

    printf '%b\n' "${RESET}"
    echo

    # System Information
    printf '%b\n' "${GREEN}User:${RESET}   $(whoami)"
    printf '%b\n' "${YELLOW}Date:${RESET}   $(date '+%a %b %d %H:%M:%S %Z %Y')"
    printf '%b\n' "${CYAN}System:${RESET} $(uname -o)"

    echo
}

# 🚀 Startup Banner
show_system

# ⌨️ CTRL + L Override
bind -x '"\C-l": show_system'
