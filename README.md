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

* Conque - Allows you to run interactive programs, such as bash
* CtrlP.vim - Full path fuzzy file, buffer, mru, tag, ... finder for Vim
* MiniBufExplorer - Elegant buffer explorer - takes very little screen space
* Molokai - A port of the monokai scheme for TextMate
* NERD Commenter - A plugin that allows for easy commenting of code for many filetypes
* NERD tree - A tree explorer plugin for navigating the filesystem
* Solarized - Precision colorscheme for the vim text editor
* Tagbar - Display tags of the current file ordered by scope
* Vundle - Vundle, the plug-in manager for Vim
* Xoria256.vim - Soft pastel gamma on dark background

## Configured shortcuts

* F5 - Refresh tags file (ctags -R)
* F6 - Run Bash via ConqueTerm
* F7 - Toggle NerdTree
* F8 - Toggle TagBar
* F10 - make clean && make
* Ctrl+P - Invoke CtrlP

### CtrlP.vim - usage

Press `Ctrl+P` to invoke CtrlP.

* `F5` - Purge the cache for the current directory to get new files,
         remove deleted files and apply new ignore options.
* `Ctrl+f` or `Ctrl+b` - Cycle between modes.
* `Ctrl+d` - Switch to filename search instead of full path.
* `Ctrl+r` - Regexp mode.
* `Ctrl+y` - Create a new file and its parent directories.
* `Ctrl+z` - Mark/Unmark multiple files and `Ctrl+o` to open them.

## Install a new bundle

Add `Bundle '...'` record into the `vimrc` file

## About vundle

https://github.com/gmarik/vundle

