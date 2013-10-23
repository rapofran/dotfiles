execute pathogen#infect()
set nocompatible
set tabstop=2 shiftwidth=2 expandtab autoindent smarttab
set encoding=utf-8
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

syntax on

"set mouse=a          " habilita el mouse !
"set cursorline           " linea horizontal en la linea actual
set incsearch         " find as you type search

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
"filetype plugin on
"filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" highlight tabs and trailing spaces
set list
set listchars=tab:>.,trail:·

colorscheme railscasts

nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <C-n> :tabnew
nnoremap <C-w> :q
nnoremap <C-s> :w

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-S-C> "+y
"vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-S-V> "+gP
"map <S-Insert> "+gP

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guifont=Monospace\ 11
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard
