
#!/usr/bin/env bash
# 💚 Gullkhan Colorful Termux

show_welcome() {
    command clear

    echo -e "\e[1;31mT\e[1;33mE\e[1;32mR\e[1;36mM\e[1;34mU\e[1;35mX \e[1;37m💫"
    echo -e "\e[1;90mA colorful shell for a colorful mind.\e[0m"
    echo
}

# Startup
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
