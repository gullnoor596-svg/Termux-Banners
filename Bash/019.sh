# 🔒 Persistent Date & Time (CTRL+L safe)
show_header() {
    echo -e "\e[1;32m═══════════════════════════════════════\e[0m"
    echo -e "\e[1;34m📅 $(date '+%A, %d %B %Y')\e[0m"
    echo -e "\e[1;33m⏰ $(date '+%I:%M:%S %p')\e[0m"
    echo -e "\e[1;32m═══════════════════════════════════════\e[0m"
}

# Show header on terminal start
show_header

# Make CTRL+L safe: show header after clear
bind -x '"\C-l":clear && show_header'

