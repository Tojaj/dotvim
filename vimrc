set nocompatible
filetype off    " required by Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle - required!
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle 'majutsushi/tagbar'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'skwp/vim-conque'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
"Bundle 'klen/python-mode'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" vim-scripts repos
Bundle 'xoria256.vim'
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

set mouse=a

set exrc        " enable per-directory .vimrc files
set secure      " disable unsafe commands in local .vimrc files
set vb

set fileformat:unix
set fileencoding:utf-8
set tabstop:8
set softtabstop:4
set shiftwidth:4
set expandtab
set autoindent

" Unindent of actual line
imap <S-Tab> <Esc> < i

set t_Co=256
colorscheme molokai
" colorscheme solarized
" colorscheme xoria256

set background:dark
set colorcolumn:80
syn on
set nu
set ruler

set ignorecase
set smartcase

set nowrap

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
set dir=/tmp

set incsearch
set hlsearch

highlight ExtraWhitespace ctermbg=white guibg=white
match ExtraWhitespace /\s\+$/

au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"inoremap <c-k> <up>
"inoremap <c-j> <down>
"inoremap <c-h> <left>
"inoremap <c-l> <right>

let mapleader = ","
set pastetoggle=<F2>

""""""""""""""""""""""""
" Plugin configuration "
""""""""""""""""""""""""

" Compiling
nmap <F10> :make clean<CR>:make<CR>

" Ctrlp
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_mruf_last_entered = 1 " Preselect last used buffer in <leader>b

" Nerd commenter
filetype plugin on

" NerdTree
nmap <F7> :NERDTreeToggle<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1

" Conque
nmap <F6> :ConqueTerm bash<CR>

" Refresh ctags
nmap <F5> :! ctags --links=no -R<CR>

" MinibufExpl
"let g:miniBufExplMapCTabSwitchBufs = 1 "Map control-tab and control-shift-tab for switching between buffers
"let g:miniBufExplUseSingleClick = 1 "Change buffer with single click on a buffer
