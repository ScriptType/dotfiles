#!/bin/bash

echo "Setting up your development environment..."

# Create all necessary directories first
echo "Creating directories..."
mkdir -p ~/.config/bat
mkdir -p ~/.config/sheldon
mkdir -p ~/.config/zsh
mkdir -p ~/.config/starship

# Ensure dotfiles directories exist
mkdir -p .config/bat
mkdir -p .config/starship

# Create symlinks
echo "Creating symlinks..."
ln -sf "$PWD/zsh/.zshrc" ~/.zshrc
ln -sf "$PWD/zsh/.zshenv" ~/.zshenv
ln -sf "$PWD/zsh/plugins.toml" ~/.config/sheldon/plugins.toml
ln -sf "$PWD/.config/bat/config" ~/.config/bat/config
ln -sf "$PWD/zsh/aliases.zsh" ~/.config/zsh/aliases.zsh
ln -sf "$PWD/.config/starship.toml" ~/.config/starship.toml
ln -sf "$PWD/.gitconfig" ~/.gitconfig
ln -sf "$PWD/.gitignore_global" ~/.gitignore_global

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install packages from Brewfile
echo "Installing packages from Brewfile..."
brew bundle

# Install fzf key bindings and completion
echo "Setting up fzf..."
if [ -f "$(brew --prefix)/opt/fzf/install" ]; then
    "$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-update-rc
fi

# Success message
echo "✨ Installation complete!"
echo "🔄 Please restart your terminal or run: source ~/.zshrc"
echo ""
echo "⚙️  Don't forget to set your git user info:"
echo "    git config --global user.name \"Your Name\""
echo "    git config --global user.email \"your.email@example.com\""
echo ""
echo "📝 To customize local settings, create ~/.zshrc.local"
