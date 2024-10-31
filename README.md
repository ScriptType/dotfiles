# Dotfiles

Modern terminal configuration with focus on productivity and user experience.

## Features

### Modern CLI Replacements
- `bat` instead of `cat` - Syntax highlighting and git integration
- `eza` instead of `ls` - Icons and git status in listings
- `fd` instead of `find` - User-friendly syntax
- `ripgrep` instead of `grep` - Faster search
- `zoxide` instead of `cd` - Smarter directory jumping
- `delta` instead of standard diff - Better git diffs
- `dust` instead of `du` - Better disk usage visualization
- `duf` instead of `df` - Better disk usage viewer
- `btm` (bottom) instead of `top` - Better process viewer
- `dog` instead of `dig` - Better DNS lookup
- `gping` instead of `ping` - Ping with graph

### Development Tools
- `jq` - JSON processor
- `yq` - YAML processor
- `difftastic` - Syntax-aware diff
- `lazygit` - Terminal UI for git
- `gh` - GitHub CLI

### Container & Kubernetes
- `docker` with aliases (d, dc, dps, etc.)
- `kubectl` with completion and aliases
- `k9s` - Terminal UI for Kubernetes
- `helm` - Kubernetes package manager

### Shell Experience
- Starship - Cross-shell prompt
- Fast syntax highlighting
- Fish-like autosuggestions
- Enhanced tab completion with fzf
- Git integration with forgit

### FZF Integration
- `fo` - Fuzzy file opening with preview
- `fd` - Directory navigation with tree preview
- `fg` - Content search with preview
- `fb` - Git branch selection
- `fk` - Process killing
- `fm` - Man page browsing
- `fh` - TLDR page browsing

### Key Bindings
- `CTRL-T` - Paste files/folders to command line
- `CTRL-R` - Search command history
- `ALT-C` - CD into selected directory
- `CTRL-/` - Toggle preview window

## Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles

# Run the install script
cd ~/dotfiles
chmod +x install.sh
./install.sh

# Set up git user info
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Structure

```
~/dotfiles/
├── .config/
│   ├── bat/              # bat configuration
│   └── starship.toml     # starship prompt configuration
├── zsh/
│   ├── .zshrc           # zsh configuration
│   ├── .zshenv          # environment variables
│   ├── aliases.zsh      # all aliases
│   └── plugins.toml     # sheldon plugins configuration
├── .gitconfig           # git configuration
├── .gitignore_global    # global git ignores
├── Brewfile             # homebrew packages
├── install.sh           # installation script
└── README.md            # documentation
```

## Aliases Reference

### Modern CLI Tools
- `ls`, `ll`, `la`, `lt` - Enhanced directory listing with git status
- `cat` - Syntax-highlighted file viewing
- `find` - Modern file finding
- `grep` - Modern text search
- `du` - Disk usage with graphs
- `df` - Disk free space with colors
- `top` - System monitoring with graphs
- `ping` - Ping with graph visualization
- `dig`/`dns` - Modern DNS lookup

### Git Shortcuts
- `g` - git
- `gs` - git status
- `gp` - git push
- `gl` - git pull
- `gco` - git checkout
- `gc` - git commit
- `gca` - git commit --amend
- `lg` - lazygit

### Docker Shortcuts
- `d` - docker
- `dc` - docker compose
- `dps` - docker ps
- `dpsa` - docker ps -a
- `dimg` - docker images

### Kubernetes Shortcuts
- `k` - kubectl
- `kns` - set namespace
- `kctx` - switch context
- `kk` - k9s
- `h` - helm

### VSCode
- `c` - open VSCode Insiders
- `c.` - open current directory
- `cdot` - open dotfiles

## Customization

### Local Configuration
Create `~/.zshrc.local` for machine-specific settings:
```bash
# Example ~/.zshrc.local
export WORK_DIR="~/projects"
alias work="cd $WORK_DIR"
```

## Updating

To update configuration:
1. Navigate to dotfiles: `cdot`
2. Make changes
3. Commit and push changes
4. On other machines, pull changes and run `./install.sh`

## Credits

This configuration includes and builds upon several excellent tools and plugins:
- [Starship](https://starship.rs/)
- [Sheldon](https://github.com/rossmacarthur/sheldon)
- [Fast Syntax Highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- [Zsh Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [FZF Tab](https://github.com/Aloxaf/fzf-tab)
- [Forgit](https://github.com/wfxr/forgit)
