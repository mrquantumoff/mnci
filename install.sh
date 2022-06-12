#!/bin/bash
# Proudly written in NeoVim

pkcon install neovim -y
mkdir -p ~/.config/nvim
sh -c 'curl -fsLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fssL -o ~/.config/nvim/init.vim https://gist.github.com/mrquantumoff/cc4a914c4b97a09fd312d07a33aa3bed/raw/7099f823e311044868eca9c7a0f961bf646401a7/.nvimrc
nvim +PlugInstall
ln -s ~/.config/nvim/init.vim ~/.nvimrc
echo "NeoVim and config installed!"
