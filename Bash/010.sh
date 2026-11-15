# ===== BEEP BEEP ASCII =====
show_beep() {
echo -e "\e[37m"   # white color; change 37 → 32 for green
cat << 'EOF'
──────▄▌▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
───▄▄██▌█ BEEP BEEP
▄▄▄▌▐██▌█ -15 LP DELIVERY
███████▌█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌
▀(⊙)▀▀▀▀▀▀▀(⊙)(⊙)▀▀▀▀▀▀▀▀▀▀(⊙
EOF
echo -e "\e[0m"
}

# Show banner on terminal start
show_beep

# Override clear
clear() {
  command clear
  show_beep
}

# Override CTRL+L
bind -x '"\C-l": clear'

