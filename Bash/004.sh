# ===== HACKER MODE ASCII =====
show_hacker() {
echo -e "\e[32m"
cat << 'EOF'
          .----.
       _.'__    `.
   .--(#)(##)---/#\
 .' @          /###\
 :         ,   #####
  `-..__.-' _.-\###/
        `;_:    `"'
      .'"""""`.
     /,  HACK  ,\
    //  ER MODE  \\
    `-._________.-'
      ___`. | .'___
     (______|______)
EOF
echo -e "\e[0m"
}

# Start par show
show_hacker

# clear override
clear() {
  command clear
  show_hacker
}

# CTRL + L override
bind -x '"\C-l": clear'

