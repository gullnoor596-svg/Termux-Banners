
#!/usr/bin/env bash
# 💚 Minimal HACKER Banner — Termux Edition
# Author: Noor Gull
# Hostname: Gullkhan

# 🎨 Colors
ESC="\033"
RESET="${ESC}[0m"
BOLD="${ESC}[1m"
GREEN="${ESC}[38;5;46m"
DARK_GREEN="${ESC}[38;5;22m"
RED="${ESC}[38;5;196m"
GRAY="${ESC}[38;5;245m"

# 🚀 Hacker Banner Function
show_hacker() {

command clear

printf "%b\n" "${DARK_GREEN}${BOLD}########################################################${RESET}"
printf "%b\n" "${GREEN}${BOLD}#                H A C K E R   M O D E                 #${RESET}"
printf "%b\n" "${DARK_GREEN}${BOLD}########################################################${RESET}"
printf "\n"

# ASCII Art
printf "%b\n" "${GREEN}${BOLD}  ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ ${RESET}"
printf "%b\n" "${GREEN}${BOLD}  ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗${RESET}"
printf "%b\n" "${GREEN}${BOLD}  ███████║███████║██║     █████╔╝ █████╗  ██████╔╝${RESET}"
printf "%b\n" "${GREEN}${BOLD}  ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗${RESET}"
printf "%b\n" "${GREEN}${BOLD}  ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║${RESET}"
printf "%b\n" "${GREEN}${BOLD}  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${RESET}"
printf "\n"

printf "%b\n" "${RED}${BOLD}💀 Access Granted: Welcome, Noor Gull 💀${RESET}"
printf "%b\n" "${GRAY}Host: Gullkhan | $(date '+%Y-%m-%d %H:%M:%S')${RESET}"
printf "\n"

}

# 🚀 Start Banner
show_hacker

# ⌨️ CTRL + L Override
bind -x '"\C-l": show_hacker'
