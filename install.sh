#!/bin/bash
# Proudly written in NeoVim

pkcon install neovim -y
mkdir -p ~/.config/nvim
sh -c 'curl -fsLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -fssL -o ~/.config/nvim/init.vim https://gist.github.com/mrquantumoff/cc4a914c4b97a09fd312d07a33aa3bed/raw/edba212140514d269c8884eee97342216d815d88/.nvimrc
nvim +PlugInstall
nvim +CocInstall coc-rust-analyzer +OmniSharpInstall 
export rustanalyzerlocation=$(which rust-analyzer)
rsanc="{rust-analyzer.server.path: \"$rustanalyzerlocation\"}"
echo $rsanc
echo $rsanc >> ~/.config/nvim/coc-settings.json

ln -s ~/.config/nvim/init.vim ~/.nvimrc
echo "NeoVim and config installed!"
