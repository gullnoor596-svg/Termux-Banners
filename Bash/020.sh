# 🌈 Mukammal Rainbow Date-Time Header for Termux
colors=(31 32 33 34 35 36)  # Red, Green, Yellow, Blue, Magenta, Cyan

show_header() {
    c1=${colors[$RANDOM % ${#colors[@]}]}
    c2=${colors[$RANDOM % ${#colors[@]}]}
    c3=${colors[$RANDOM % ${#colors[@]}]}
    
    echo -e "\e[1;${c1}m═══════════════════════════════════════\e[0m"
    echo -e "\e[1;${c2}m📅 $(date '+%A, %d %B %Y')\e[0m"
    echo -e "\e[1;${c3}m⏰ $(date '+%I:%M:%S %p')\e[0m"
    echo -e "\e[1;${c1}m═══════════════════════════════════════\e[0m"
}

# Show header on terminal start
show_header

# CTRL+L safe: clear screen then show header
bind -x '"\C-l":clear && show_header'

# Anonymous prompt with current folder
PS1="\[\e[1;37m\]Anonymous:\w\$ \[\e[0m\]"

# Optional: real-time clock update below prompt (without background loop)
update_prompt() {
    while true; do
        sleep 1
        tput sc 2>/dev/null  # Save cursor (if available)
        tput cuu 1 2>/dev/null  # Move cursor up one line
        tput el 2>/dev/null  # Clear line
        echo -e "\e[1;33m⏰ $(date '+%I:%M:%S %p')\e[0m"
        tput rc 2>/dev/null  # Restore cursor
    done
}

# Uncomment below line if you want live seconds update (requires ncurses-utils)
# update_prompt &
