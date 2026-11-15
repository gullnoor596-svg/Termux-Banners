 # ===== SHOW VALORANT UNINSTALL ART =====
show_valorant_art() {
echo -e "\e[36m
UNINSTALLING VALORANT
▇▇▇▇▇▇▇▇▇▇▇▇▇▇▢
　　╭━╮╭━╮╭╮　╱ 　　
　　╰━┫╰━┫╰╯╱╭╮ 　　
　　╰━╯╰━╯　╱　╰╯ 　　　　　
　　　     COMPLETE
\e[0m"
}

# Show art at terminal start
show_valorant_art

# Override clear to keep art
clear() {
    command clear
    show_valorant_art
}

# Bind CTRL+L to our clear
bind -x '"\C-l": clear'
