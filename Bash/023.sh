
# 💚 Gullkhan Banner 💚

# 🎨 Colors
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
blue='\e[34m'
magenta='\e[35m'
cyan='\e[36m'
white='\e[97m'
reset='\e[0m'

# 🌟 Gullkhan Banner Function
show_gullkhan() {
clear

for color in "$red" "$yellow" "$green" "$cyan" "$blue" "$magenta"; do
    echo -e "${color}░██████╗░██╗░░░██╗██╗░░░░░██╗░░░░░"
    echo -e "${color}██╔════╝░██║░░░██║██║░░░░░██║░░░░░"
    echo -e "${color}██║░░██╗░██║░░░██║██║░░░░░██║░░░░░"
    echo -e "${color}██║░░╚██╗██║░░░██║██║░░░░░██║░░░░░ "
    echo -e "${color}╚██████╔╝╚██████╔╝███████╗███████╗ "
    echo -e "${color}░╚═════╝░░╚═════╝░╚══════╝╚══════╝ "
    sleep 0.2
    clear
done

# Banner for KHAN
echo -e "${magenta}░██████╗${yellow}░██╗░░░██╗${green}██╗░░░░░${cyan}██╗░░░░░${blue} ██╗░░██╗${yellow} ██╗░░██╗${green}░█████╗${cyan}░███╗░░██╗"
echo -e "${magenta}██╔════╝${yellow}░██║░░░██║${green}██║░░░░░${cyan}██║░░░░░${blue} ██║░██╔╝${yellow} ██║░░██║${green}██╔══██╗${cyan}████╗░██║"
echo -e "${magenta}██║░░██╗${yellow}░██║░░░██║${green}██║░░░░░${cyan}██║░░░░░${blue} █████═╝░${yellow} ███████║${green}███████║${cyan}██╔██╗██║"
echo -e "${magenta}██║░░╚██╗${yellow}██║░░░██║${green}██║░░░░░${cyan}██║░░░░░ ${blue}██╔═██╗░${yellow} ██╔══██║${green}██╔══██║${cyan}██║╚████║"
echo -e "${magenta}╚██████╔╝${yellow}╚██████╔╝${green}███████╗${cyan}███████╗ ${blue}██║░╚██╗${yellow} ██║░░██║${green}██║░░██║${cyan}██║░╚███║"
echo -e "${magenta}░╚═════╝${yellow}  ╚═════╝ ${green}╚══════╝${cyan}╚══════╝${blue} ╚═╝░░╚═╝${yellow} ╚═╝░░╚═╝${green}╚═╝░░╚═╝${cyan}╚═╝░░╚══╝"
echo
echo -e "${green}💚 Welcome, Noor Gull — Ready to hack the world 💫${reset}"
echo

# 🕒 System Info Box
echo -e "${cyan}┌────────────────────────────────────────────┐${reset}"
echo -e "${yellow}│ 🌍 User   : ${green}$(whoami)${reset}"
echo -e "${yellow}│ 📅 Date   : ${green}$(date +"%A, %d %B %Y")${reset}"
echo -e "${yellow}│ ⏰ Time   : ${green}$(date +"%I:%M:%S %p")${reset}"
echo -e "${yellow}│ 💻 Device : ${green}Termux Android${reset}"
echo -e "${cyan}└────────────────────────────────────────────┘${reset}"
echo
}

# 🚀 Show Banner on Terminal Start
show_gullkhan

# ⌨️ CTRL + L Override
bind -x '"\C-l": show_gullkhan'
