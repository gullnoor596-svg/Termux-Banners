  # ===== ANONYMOUS ASCII =====
show_anon() {
echo -e "\e[32m"
cat << 'EOF'
           .-"      "-.
          /            \
         |,  .-.  .-.  ,|
         | )(_o/  \o_)( |
         |/     /\     \|
         (_     ^^     _)
          \__|IIIIII|__/
           | \IIIIII/ |
           \          /
            `--------`
           ANONYMOUS
EOF
echo -e "\e[0m"
}

# Start par show
show_anon

# clear override
clear() {
  command clear
  show_anon
}

# CTRL + L override
bind -x '"\C-l": clear'
