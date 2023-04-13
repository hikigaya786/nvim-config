## This is are the config files for neovim which I have set up

## Install `ripgrp` for telescope grep searching 
```bash
sudo apt-get install ripgrep
```

## Installing latest neovim on ubuntu

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv ./nvim.appimage /usr/bin/nvim
```

## Install Packer after installing neovim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Install clipboard like `xsel` or `xclip`

```bash
sudo apt-get install xclip
sudo apt-get install xsel
```
