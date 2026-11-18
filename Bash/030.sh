
#!/usr/bin/env bash
# 💚 Gullkhan Welcome Banner

show_welcome() {
    command clear

    printf '\033[38;5;45m'
    echo "╔════════════════════════════════╗"
    echo "║   Welcome Back to Termux 💫    ║"
    echo "╚════════════════════════════════╝"
    printf '\033[0m\n'
}

# Startup
show_welcome

# CTRL + L
bind -x '"\C-l": show_welcome'
