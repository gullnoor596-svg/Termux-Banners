# 🌈 Ultimate Beautiful UI Termux Lock Screen
termux_lock_ui() {
    PASSWORD="1234"  # Set your password here
    colors=(31 32 33 34 35 36) # Rainbow colors
    GREEN='\033[1;32m'
    RED='\033[1;31m'
    CYAN='\033[1;36m'
    RESET='\033[0m'

    # Ignore CTRL+C and CTRL+Z
    trap '' SIGINT SIGTSTP
    clear

    # Animated rainbow banner
    banner="🔒 Welcome to Termux 🔒"
    len=${#banner}
    for i in {1..5}; do
        line=""
        for (( j=0; j<$len; j++ )); do
            color_index=$(( (j + i) % ${#colors[@]} ))
            color=${colors[$color_index]}
            char="${banner:$j:1}"
            line+="\033[1;${color}m$char\033[0m"
        done
        echo -ne "\r$line"
        sleep 0.2
    done
    echo -e "\n"

    # Draw fancy box once
    FANCY_LINE="⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘⫘"
    echo -e "${CYAN}$FANCY_LINE${RESET}"
    echo -e "${CYAN}       🔒 Enter Password 🔒       ${RESET}"
    echo -e "${CYAN}$FANCY_LINE${RESET}"
    echo -n -e "${GREEN}Password: ${RESET}"

    # Password prompt loop
    while true; do
        read -s input

        # Empty input safe → don't redraw box
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
            # Wrong password blink effect 3 times
            for i in {1..3}; do
                echo -ne "\r${RED}❌ Wrong Password! Try Again.${RESET}"
                sleep 0.3
                echo -ne "\r\033[K"
                sleep 0.3
            done
            # Re-print prompt
            echo -n -e "${GREEN}Password: ${RESET}"
        fi
    done

    # Restore CTRL+C / CTRL+Z
    trap - SIGINT SIGTSTP
}

# Call lock automatically on Termux start
termux_lock_ui
