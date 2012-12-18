# About

My personal `.vim` directory

## Configure .vim and .vimrc

```bash
git clone https://github.com/Tojaj/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

## Install configured bundles

Launch `vim`, run `:BundleInstall`
(or `vim +BundleInstall +qall` for CLI lovers)

## Included Plugins

* Vundle - Vundle, the plug-in manager for Vim
* Tagbar - Display tags of the current file ordered by scope
* MiniBufExplorer - Elegant buffer explorer - takes very little screen space
* NERD tree - A tree explorer plugin for navigating the filesystem
* NERD Commenter - A plugin that allows for easy commenting of code for many filetypes
* Conque - Allows you to run interactive programs, such as bash
* Molokai - A port of the monokai scheme for TextMate
* Solarized - Precision colorscheme for the vim text editor
* Xoria256.vim - Soft pastel gamma on dark background

## Configured shortcuts

* F5 - Refresh tags file (ctags -R)
* F6 - Run Bash via ConqueTerm
* F7 - Toggle NerdTree
* F8 - Toggle TagBar
* F10 - make clean && make

## Install a new bundle

Add `Bundle '...'` record into the `vimrc` file

## About vundle

https://github.com/gmarik/vundle

