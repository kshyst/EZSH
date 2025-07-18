#!/bin/bash

set -e

echo "-----Installing zsh-----"
sudo apt-get update
sudo apt-get install -y zsh git curl

echo "----Installing Oh My Zsh-----"
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "-----Installing Powerlevel10k-----"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

echo "-----Configuring .zshrc for Powerlevel10k------"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' $HOME/.zshrc
if ! grep -q 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' $HOME/.zshrc; then
    echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >> $HOME/.zshrc
fi

echo "-----Setting zsh as default shell------"
sudo chsh -s $(which zsh)

echo "Open a new terminal to access zsh ;)"
