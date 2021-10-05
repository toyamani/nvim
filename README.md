# To-ya's neovim settings

## Need item

- Nerd font

## Setting

### Get vim-plug

```
sh - 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Install plugins

```
:PlugInstall
```

### Tree-sitter & luajit
Mac
```
brew install --HEAD tree-sitter luajit neovim
```

Linux
```
npm install -g tree-sitter-cli
sudo apt-get install -y luajit
```


