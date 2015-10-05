# About

My personal `.vim` directory

## Configure .vim and .vimrc

```bash
git clone https://github.com/Tojaj/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

## Install configured bundles

Launch ``vim``, run ``:BundleInstall``
(or ``vim +BundleInstall +qall`` for CLI lovers)

## Included Plugins

* **Conque** - Allows you to run interactive programs, such as bash
* **CtrlP.vim** - Full path fuzzy file, buffer, mru, tag, ... finder for Vim
* **Molokai** - A port of the monokai scheme for TextMate
* **NERD Commenter** - A plugin that allows for easy commenting of code for many filetypes
* **NERD tree** - A tree explorer plugin for navigating the filesystem
* **Python-mode** - Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
* **Solarized** - Precision colorscheme for the vim text editor
* **Tagbar** - Display tags of the current file ordered by scope
* **Vundle** - Vundle, the plug-in manager for Vim
* **Xoria256.vim** - Soft pastel gamma on dark background

## Configured mapping

* ``,`` - Leader key
* ``F2`` - Toggle paste insert mode
* ``F5`` - Refresh tags file (ctags -R)
* ``F6`` - Run Bash via ConqueTerm
* ``F7`` - Toggle NerdTree
* ``F8`` - Toggle TagBar
* ``F10`` - make clean && make
* ``Ctrl+P`` - Invoke CtrlP

### CtrlP.vim - usage

Press `Ctrl+P` or `,+t` to invoke CtrlP in file find mode or `,+b` in find
buffer mode.

* ``F5`` - Purge the cache for the current directory to get new files,
         remove deleted files and apply new ignore options.
* ``Ctrl+f`` or `Ctrl+b` - Cycle between modes.
* ``Ctrl+d`` - Switch to filename search instead of full path.
* ``Ctrl+r`` - Regexp mode.
* ``Ctrl+y`` - Create a new file and its parent directories.
* ``Ctrl+z`` - Mark/Unmark multiple files and `Ctrl+o` to open them.
* ``Ctrl+^`` - Switch to last used buffer (from normal mode).

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

---------------------------------------------------

## Other common and useful Vim stuff

### Copy (yank) to system clipboard

* ``"+y`` - Copy selected lines into the system clipboard.

You will need vim with with X11 support. Specifically vim compiled with
xterm_clipboard option on.
Check it: ``vim --version | grep +xterm_clipboard``
Next solution could be use gvim (``gvim -v`` for terminal mode) instead of vim.

**Tip:** Add alias to *~/.bashrc*: ``alias vim='gvim -v'``.


### Commands

* `:edit [filename]` - Open the filename.
* `:bd` - Close current buffer.
* `:sp` - Split window horizontally.
* `:vsp` - Split window verticaly.
* `:qa` - Quit (close all buffers/splits).
* `:tag [tagname]` - Search for the tagname in ctags file.

Recording

* `.` - Repeats last text change command.
* `q<letter>` - Start recording.
* `q` - Stop recording.
* `[count]@<letter>` - Replay record [count] times.

Running external commands

* `:!<command>` - Run shell command and show its output (normal mode).
* `:!<command> %` - Run shell command on the current file (normal mode).
 * `:!wc %` - Count lines in the current document (normal mode).
* `!<command>` - Run shell command on marked lines (visual mode).
 * `!lsort` - Sorts marked lines (visual mode).
* `!!<command>` - Run shell command, places output in file starting at current line (normal mode).
 * `!!uname` - Get system information (normal mode).

### Other mixed tips

* ``Ctrl+n`` - Completition.
* ``q+:`` - Commands history (normal mode).

### Shortcuts

* `Ctrl+]` - Jump to the tag under cursor.
* `g+<left click on the tag>` - Jump to the tag on which was clicked
* `Ctrl+o` - Go to the previous cursor position.
* `Ctrl+i` - Go to the newer one cursor position.

Navigation between splits

* `Ctrl+w [hjkl]` - Move to the split on the (h-left, j-down, k-up, l-right)
* `Ctrl+w Ctrl+w` - Move to the last active split.

Moving the screen

* `Ctrl+e` - Moves screen up one line.
* `Ctrl+y` - Moves screen down one line.

Goto

* ``Shift+*`` - Go to the next one occurrence of the word under the cursor.
* ``Shift+#`` - Go to the previous one occurrence of the word under the cursor.
* ``%`` - Go to the matching (opening or closing) parenthesis, square bracket or a curly brace.

### Options

**Note:** Prepend "no" to the option to disable it (e.g. `set nonu`).

* `set et` - Expand tab (long version: extandtab)
* `set nu` - Show line numbers.
* `set ic` - Ignore case when searching.
* `set autoindent` - Enable auto indenting.
* `set paste` - Enable paste mode (prevent destroying of indentation)

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
* ``*`` - Matches zero or more occurrences of previous character in expression.
* ``\`` - Escapes the meaning of the next character.
* ``\\`` - Escapes the \ character.
* ``\@!`` - Matches with zero width if the preceding atom does NOT match (e.g. ``/Foo\(\Bar\)\@!``)

### Replace

* ``%s/foo/bar/`` - Replace "foo" with "bar" in whole file
* ``.,$s/foo/bar/`` - Replace "foo" with "bar" from current position to end of file.
* ``%s/foo/bar/c`` - Replace "foo" with "bar" in whole file with confirmation for each replace
* ``%s/foo/bar/g`` - Replace "foo" with "bar"in while file and even multiple occurences on a single line.

### Line operations

`:g` (`:global`) executes a command on all lines that match a regex.

`g/regex/command_to_execute`

* `:g/Debug/d` - Delete all lines that contain word `Debug`
* `:g/Debug/d_` - Faster delete all lines that contain word `Debug` (because by default each deleted line is stored to a register and `_` stands for "blackhole" register)
* `:g/^Debug/d` - Delete all lines that start with word `Debug`
* `:g!/error/d` - Delete all lines that don't contain word `error`
* `:v/error/d` - Delete all lines that don't contain word `error`
* `:g/Warning/s/locahost/test.com/g` - Replace `localhost` string with `test.com` on all lines that start with `Warning`
* `:g/Info/m$` - Move all lines matching a pttern to end of file
* `:g/Info/t$` - Copy all lines matching a pttern to end of file
* `:g/^Debug/s/$/some_text` - Add `some_text` string to end of each line that starts with `Debug`


### Textobjects selection

Textobject selection is a series of commands that can only be used while
in Visual mode or after an operator (d - delete, c - change).

**Basic:**

Note: [count] is a optional number argument.

* `[count]aw` - Select [count] words. (White space included, but not counted).
* `[count]iw` - Select [count] inner words. (White space is counted too).
* `[count]aW` - Select [count] WORDS.
* `[count]iW` - Select [count] inner WORDS.
* `[count]as` - Select [count] sentences.
* `[count]is` - Select [count] sentences.
* `[count]ap` - Select [count] paragraphs.
* `[count]ip` - Select [count] paragraphs.
* `[count]a[` - Select [count] '[' ']' blocks (chars like "(){}<>" could be used too).


**Examples useful while programming:**

From normal mode:

* `dd`  - Delete one line.
* `3dd` - Delete three lines.
* `diw` - Delete a word.
* `di"` - Delete inner "" block - Delete a whole string.
* `di(` or `dib` - Delete inner () block - Delete a function arguments.
* `ci"` - Change inner "" block - Change a whole string.
* `ci(` or `cib` - Change inner () block - Change a function arguments.
* `di{` or `diB` - Delete inner {} block.
