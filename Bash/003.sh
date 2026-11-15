# ===== ASCII ART FUNCTION =====
show_art() {
echo -e "\e[36m
        .-\"\"\"-.
       / .===. \\
       \/ 6 6 \/
       ( \___/ )
 __ooo__\_____/__ooo__
(                      )
 )      Terminal       (
(______________________)
\e[0m"
}

# Start par show karo
show_art

# clear command override
clear() {
  command clear
  show_art
}

# CTRL + L override
bind -x '"\C-l": clear'