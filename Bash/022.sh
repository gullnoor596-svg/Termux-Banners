# 🌈 GULL KHAN Banner with color change on CTRL+L

colors=(31 32 33 34 35 36)  # Red, Green, Yellow, Blue, Magenta, Cyan

show_banner() {
    # Pick random color each time
    c=${colors[$RANDOM % ${#colors[@]}]}
    
    clear
    echo -e "\e[1;${c}m════════════════════════════════════════════════════════\e[0m"
    echo -e "\e[1;${c}m  ░██████╗░██╗░░░██╗██╗░░░░░██╗░░░░░  ██╗░░██╗██╗░░██╗░█████╗░███╗░░██╗\e[0m"
    echo -e "\e[1;${c}m  ██╔════╝░██║░░░██║██║░░░░░██║░░░░░  ██║░██╔╝██║░░██║██╔══██╗████╗░██║\e[0m"
    echo -e "\e[1;${c}m  ██║░░██╗░██║░░░██║██║░░░░░██║░░░░░  █████═╝░███████║███████║██╔██╗██║\e[0m"
    echo -e "\e[1;${c}m  ██║░░╚██╗██║░░░██║██║░░░░░██║░░░░░  ██╔═██╗░██╔══██║██╔══██║██║╚████║\e[0m"
    echo -e "\e[1;${c}m  ╚██████╔╝╚██████╔╝███████╗███████╗  ██║░╚██╗██║░░██║██║░░██║██║░╚███║\e[0m"
    echo -e "\e[1;${c}m  ░╚═════╝░░╚═════╝░╚══════╝╚══════╝ ╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝\e[0m"
    echo -e "\e[1;${c}m════════════════════════════════════════════════════════\e[0m"
}

# Show banner on terminal start
show_banner

# CTRL+L safe: clear screen then show banner (color changes each time)
bind -x '"\C-l":show_banner'

# Anonymous prompt
PS1="Anonymous:\w\$ "
