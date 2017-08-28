call plug#begin('~/.local/share/nvim/plugged')

" vim configs
set number
set mouse=a  " enable mouse
set mousehide " hide when characters are typed
set showtabline=2
set ignorecase " Case sensitive search
set smartcase " Case sensitive when uc present
set nowrap " Do not wrap long lines
set clipboard=unnamed,unnamedplus
set paste " Paste from a windows or from vim
set go+=a " ??
set expandtab " Tabs are spaces, not tabs
set shiftwidth=2 " how many columns text is indented with the reindent operations (<< and >>)
set softtabstop=2 " number of spaces to use for autoindenting

Plug 'scrooloose/nerdtree'

" Status line with bufferline support
Plug 'itchyny/lightline.vim'

" A command-line fuzzy finder written in Go
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'

" Provides insert mode auto-completion for quotes, parens, brackets
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

" Emmet suport, remember: <C-Z>,
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-Z>'

" Show whitespaces in your code and you can strip them
Plug 'ntpeters/vim-better-whitespace'
" whitestrip on save
autocmd BufWritePre * StripWhitespace

" Move your code lines in a cool way
Plug 'matze/vim-move'

nnoremap <A-1> 1gt
vnoremap <A-1> 1gt
nnoremap <A-2> 2gt
vnoremap <A-2> 2gt
nnoremap <A-3> 3gt
vnoremap <A-3> 3gt
nnoremap <A-4> 4gt
vnoremap <A-4> 4gt
nnoremap <A-5> 5gt
vnoremap <A-5> 5gt
nnoremap <A-6> 6gt
vnoremap <A-6> 6gt
nnoremap <A-7> 7gt
vnoremap <A-7> 7gt
nnoremap <A-8> 8gt
vnoremap <A-8> 8gt
nnoremap <A-9> 9gt
vnoremap <A-9> 9gt
nnoremap <C-w> :q<CR>
vnoremap <C-w> :q<CR>
nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>

:map <C-z> u
:map <C-c> y
:map <C-v> p
:map <C-t> :tabnew <Enter>
:map <C-f> /
:map <F3> n
:map <C-h> :%s/

" Initialize plugin system
call plug#end()
