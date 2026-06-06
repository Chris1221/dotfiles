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
if [ -d "${XDG_DATA_HOME:-$HOME/.local/share}/tmux/oh-my-tmux" ]; then
    echo "Oh My Tmux is already installed."
else
    echo "Installing Oh My Tmux..."
    # Install Oh My Tmux using the official installation script
    curl -fsSL "https://github.com/gpakosz/.tmux/raw/refs/heads/master/install.sh#$(date +%s)" | bash
fi

# Check if Neovim >= 0.10 is installed
_nvim_need_install=false
if command -v nvim &> /dev/null; then
    nvim_minor=$(nvim --version | head -1 | grep -oP '(?<=v0\.)\d+')
    if [ "${nvim_minor:-0}" -ge 10 ]; then
        echo "Neovim >= 0.10 is already installed."
    else
        echo "Upgrading Neovim to >= 0.10..."
        _nvim_need_install=true
    fi
else
    echo "Installing Neovim..."
    _nvim_need_install=true
fi

if [ "$_nvim_need_install" = true ]; then
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
    tar xzf nvim-linux-x86_64.tar.gz
    sudo mv nvim-linux-x86_64 /opt/nvim
    sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
    rm nvim-linux-x86_64.tar.gz
fi

# Check if pynvim is installed
if python3 -c "import pynvim" &>/dev/null; then
    echo "pynvim is already installed."
else
    echo "Installing pynvim..."
    python3 -m pip install pynvim
fi

# Check if vim-plug is installed
if [ -f "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" ]; then
    echo "vim-plug is already installed."
else
    echo "Installing vim-plug..."
    curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Check if gh is installed, otherwise install it 
if ! command -v gh &> /dev/null; then 
    echo "gh not installed but it should be"
fi

# Check if stow is installed, if not just prompt the user
if ! command -v stow &> /dev/null; then
    echo "stow could not be found. Please install stow and run this script again."
    exit
fi



stow --target $HOME zsh latexmk tmux nvim

echo "Installation complete. Please restart your terminal or run 'source ~/.zshrc' to apply the changes."
