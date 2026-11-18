
#!/usr/bin/env bash
# 🎭 Anonymous Mask Banner — Termux Edition
# Author: Noor Gull
# Hostname: Gullkhan

# 🎨 Colors
ESC="\033"
RESET="${ESC}[0m"
WHITE="${ESC}[97m"
RED="${ESC}[91m"
CYAN="${ESC}[96m"
GRAY="${ESC}[90m"
BOLD="${ESC}[1m"

# 🎭 Anonymous Banner Function
show_anonymous() {

    # Clear previous banner
    command clear
    echo

    printf "${RED}${BOLD}             ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄${RESET}\n"
    printf "${RED}${BOLD}          ▄█${WHITE}▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀${RED}█▄${RESET}\n"
    printf "${RED}${BOLD}        ▄█${WHITE}▀                                ▀${RED}█▄${RESET}\n"
    printf "${RED}${BOLD}       █${WHITE}▀                                    ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}      █${WHITE}▀       ${GRAY}▄██████▄${WHITE}    ${GRAY}▄██████▄${WHITE}       ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}     █${WHITE}▀       ${GRAY}███▀▀███${WHITE}    ${GRAY}███▀▀███${WHITE}        ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}     █${WHITE}         ${GRAY}▀████▀${WHITE}      ${GRAY}▀████▀${WHITE}          ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}     █${WHITE}                                     ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}      █${WHITE}   ${GRAY}▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄${WHITE}   ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}       █${WHITE} ${GRAY}███▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀███${WHITE} ▀${RED}█${RESET}\n"
    printf "${RED}${BOLD}        ▀█${WHITE}▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█▀${RESET}\n"
    printf "${RED}${BOLD}          ▀██████████████████████████████▀${RESET}\n"
    printf "${RED}${BOLD}             ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀${RESET}\n"

    printf "\n${CYAN}${BOLD}      ⚡ We Are Anonymous ⚡${RESET}\n"
    printf "${WHITE}${BOLD}      We Are Legion — We Do Not Forgive\n"
    printf "      We Do Not Forget — Expect Us\n${RESET}\n\n"

    # 🖥️ System Info Box
    printf "${RED}╭────────────────────────────────────────────╮${RESET}\n"

    printf "${RED}│${RESET}%-44s${RED}│${RESET}\n" \
    "  User: Noor Gull   Host: Gullkhan"

    printf "${RED}│${RESET}%-44s${RED}│${RESET}\n" \
    "  Date: $(date '+%Y-%m-%d %H:%M:%S')"

    printf "${RED}╰────────────────────────────────────────────╯${RESET}\n"

    echo
}

# 🚀 Start Banner
show_anonymous

# ⌨️ CTRL + L Override
bind -x '"\C-l": show_anonymous'
