# ~/dotfiles/zsh/.zshrc

# BAT Configuration
export BAT_THEME="Catppuccin-mocha" # Modern, eye-friendly theme
export BAT_STYLE="numbers,changes,header" # Show line numbers, Git changes, and file headers
alias cat='bat --paging=never'  # Replace cat, never use pager
alias less='bat --paging=always' # For when you actually want paging

# EZA (modern ls) with icons and git integration
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first --git'
alias la='eza -la --icons --group-directories-first --git'
alias lt='eza --tree --icons --level=2'
alias l.='eza -a --icons | rg "^\."' # Show only hidden files

# FD (modern find) - simpler syntax
alias find='fd'

# RIPGREP (modern grep) - faster search
alias grep='rg'

# ZOXIDE (modern cd) - smart directory jumping
eval "$(zoxide init zsh --cmd cd)" # Replace cd command completely

# FZF Configuration - modern fuzzy finding
export FZF_DEFAULT_COMMAND='fd --type file --color=always --follow --hidden --exclude .git'
export FZF_DEFAULT_OPTS="--ansi --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias cat='bat'
alias catp='bat --plain --paging=never'   # for those rare cases when you want direct output
