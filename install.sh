#! /usr/bin/bash
# 
# This is the installation script of my dotfiles.
#

DOTFILES_DIR=$HOME"/.dotfiles/"

if [[ "$EUID" -eq 0 ]]; then
  echo "This script must NOT be run as root\n" 1>&2
  exit 1
fi

if [ -f "/etc/arch-release" ]; then
  PKG="i3-wm i3status neovim git stow tmux zsh kitty curl ruby rubygems npm base-devel"
  PKG_AUR="i3lock-fancy-git i3lock-wrapper"
else
  echo "This script only supports arch linux and Manjaro.\n"
  exit 1
fi

cd $HOME

printf "\n\nUpdating the system\n"
sudo pacman -Syu --noconfirm

printf "\n\nInstalling iaderdor dotfiles packages\n"
sudo pacman -S --noconfirm $PKG

printf "\n\nInstaling yay\n"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sic --noconfirm
cd ..
rm -rf yay

printf "\n\nInstalling things from yay\n"
yay -S --noconfirm $PKG_AUR

printf "\n\nChanging default shell to zsh\n"
chsh --shell=/usr/bin/zsh

printf "\n\nCloning dotfiles\n"
git clone https://github.com/iaderdor/dotfiles
mv dotfiles $DOTFILES_DIR

printf "\n\nInstalling dotfiles\n"
mkdir -p $HOME"/.config"
cd $DOTFILES_DIR
stow -v -t $HOME zsh git
stow -v -t $DOTFILES_DIR config

printf "\n\nInstalling oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

printf "\n\nInstalling rbenv\n"
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

printf "\n\nInstalling nvm\n"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

printf "\n\nInstalling vimplug\n"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

printf "\n\nUpdating vim\n"
nvim +'PlugInstall --sync' +qall
gem install solargraph rubocop
npm install --save-dev stylelint stylelint-config-standard
