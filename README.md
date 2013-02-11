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

* **Conque** - Allows you to run interactive programs, such as bash
* **CtrlP.vim** - Full path fuzzy file, buffer, mru, tag, ... finder for Vim
* **MiniBufExplorer** - Elegant buffer explorer - takes very little screen space
* **Molokai** - A port of the monokai scheme for TextMate
* **NERD Commenter** - A plugin that allows for easy commenting of code for many filetypes
* **NERD tree** - A tree explorer plugin for navigating the filesystem
* **Solarized** - Precision colorscheme for the vim text editor
* **Tagbar** - Display tags of the current file ordered by scope
* **Vundle** - Vundle, the plug-in manager for Vim
* **Xoria256.vim** - Soft pastel gamma on dark background

## Configured mapping

* `,` - Leader key
* `F5` - Refresh tags file (ctags -R)
* `F6` - Run Bash via ConqueTerm
* `F7` - Toggle NerdTree
* `F8` - Toggle TagBar
* `F10` - make clean && make
* `Ctrl+P` - Invoke CtrlP

### CtrlP.vim - usage

Press `Ctrl+P` or `,+t` to invoke CtrlP in file find mode or `,+b` in find
buffer mode.

* `F5` - Purge the cache for the current directory to get new files,
         remove deleted files and apply new ignore options.
* `Ctrl+f` or `Ctrl+b` - Cycle between modes.
* `Ctrl+d` - Switch to filename search instead of full path.
* `Ctrl+r` - Regexp mode.
* `Ctrl+y` - Create a new file and its parent directories.
* `Ctrl+z` - Mark/Unmark multiple files and `Ctrl+o` to open them.

### NERD Commenter - usage

* `,+cu` - Uncomments the selected line(s).
* `,+cc` - Comment out the current line or text selected in visual mode.
* `,+cs` - Comments out the selected lines *sexily*.
* `,+c` - Toggles the comment state of the selected line(s). If the topmost
  selected line is commented, all selected lines are uncommented and vice versa.
* `,+ci` - Toggles the comment state of the selected line(s) individually.

### NERD Tree - usage

* `F7` - Invoke NERD Tree.
* `r` - Refresh content of selected directory.

## Install a new bundle

Add `Bundle '...'` record into the `vimrc` file

## About vundle

https://github.com/gmarik/vundle

## Other common and useful Vim stuff

### Commands

* `:edit [filename]` - Open the filename.
* `:bd` - Close current buffer.
* `:sp` - Split window horizontally.
* `:vsp` - Split window verticaly.
* `:tag [tagname]` - Search for the tagname in ctags file.

### Shortcuts

* `Ctrl+]` - Jump to the tag under cursor.
* `Ctrl+o` - Go to the previous cursor position.
* `Ctrl+i` - Go to the newer one cursor position.

* `Ctrl+e` - Move screen up one line.
* `Ctrl+y` - Move screen down one line.

* `Shift+*` - Go to the next one occurrence of the word under the cursor.
* `Shift+#` - Go to the previous one occurrence of the word under the cursor.

### Options

**Note:** Prepend "no" to the option to disable it (e.g. `set nonu`).

* `set nu` - Show line numbers.
* `set ic` - Ignore case when searching.
* `set autoindent` - Enable auto indenting.

### Searching

Useful characters and patterns:

* `^` - Matches beginning of line.
* `$` - Matches eng of line.
* `.` - Matches any single character.
* `\<` - Matches beginning of word.
* `\>` - Matches and of word.
* `[str]` - Matches any single character in *str*.
* `[^str]` - Matches any character not in *str*.
* `[a-n]` - Matches any character between *a* and *n*.
* `\*` - Matches zero or more occurrences of previous character in expression.
* `\` - Escapes the meaning of the next character.
* `\\\\` - Escapes the \ character.
