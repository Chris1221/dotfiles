#!/bin/bash

# Check if Oh My Zsh is already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is already installed."
else
    echo "Installing Oh My Zsh..."
    # Install Oh My Zsh using the official installation script
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi  

# Check if oh my tmux is already installed
if [ -d "$HOME/.oh-my-tmux" ]; then
    echo "Oh My Tmux is already installed."
else
    echo "Installing Oh My Tmux..."
    # Install Oh My Tmux using the official installation script
    curl -fsSL "https://github.com/gpakosz/.tmux/raw/refs/heads/master/install.sh#$(date +%s)" | bash
fi

# Check if stow is installed, if not just prompt the user
if ! command -v stow &> /dev/null; then
    echo "stow could not be found. Please install stow and run this script again."
    exit
fi



stow --target $HOME zsh latexmk git tmux

echo "Installation complete. Please restart your terminal or run 'source ~/.zshrc' to apply the changes."