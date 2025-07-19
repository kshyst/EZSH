#!/bin/bash

set -ex

echo "-----Installing zsh-----"
if [ ! -d /usr/bin/zsh ]; then
    echo "zsh is already installed. Skipping."
else 
    sudo apt-get update
    sudo apt-get install -y zsh git
fi

echo "----Installing Oh My Zsh-----"
export RUNZSH=no
export CHSH=no
OHZSH="$HOME/.oh-my-zsh"
if [ -d "$OHZSH" ]; then
    echo "Oh My Zsh already installed in $OHZSH. Skipping installation."
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "-----Installing Powerlevel10k-----"
if [ ! -d "$OHZSH/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$OHZSH/custom/themes/powerlevel10k"
else
    echo "Powerlevel10k already installed. Skipping."
fi

echo "-----Configuring .zshrc for Powerlevel10k------"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' "$HOME/.zshrc"
if ! grep -q 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' "$HOME/.zshrc"; then
    echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >> "$HOME/.zshrc"
fi

echo "-----Setting zsh as default shell------"
sudo chsh -s "$(which zsh)" "$USER"

echo "Open a new terminal to access zsh ;)"
