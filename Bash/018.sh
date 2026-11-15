# Password Lock with Blinking Wrong Password Message
termux_box_lock_blink() {
    PASSWORD="1234"
    GREEN='\033[1;32m'
    RED='\033[1;31m'
    CYAN='\033[1;36m'
    RESET='\033[0m'

    trap '' SIGINT SIGTSTP
    clear

    # Draw box once
    echo -e "${CYAN}══════════════════════════${RESET}"
    echo -e "${CYAN}   🔒 Enter Password 🔒   ${RESET}"
    echo -e "${CYAN}══════════════════════════${RESET}"
    echo -n -e "${GREEN}Password: ${RESET}"

    while true; do
        read -s input

        # Skip empty input
        if [ -z "$input" ]; then
            echo -n -e "\r${GREEN}Password: ${RESET}"
            continue
        fi

        if [ "$input" = "$PASSWORD" ]; then
            echo -e "\n${CYAN}✅ Access Granted! Welcome Anonymous!${RESET}"
            sleep 1
            clear
            break
        else
            # Blink effect 3 times
            for i in {1..3}; do
                # Print message
                echo -ne "\r${RED}❌ Wrong Password! Try Again.${RESET}"
                sleep 0.3
                # Clear message
                echo -ne "\r\033[K"
                sleep 0.3
            done
            # Re-print prompt
            echo -n -e "${GREEN}Password: ${RESET}"
        fi
    done

    trap - SIGINT SIGTSTP
}

termux_box_lock_blink
