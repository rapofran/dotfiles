call plug#begin('~/.local/share/nvim/plugged')

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
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <C-w> :q
nnoremap <C-s> :w

" CTRL-C and CTRL-Insert are Copy
"vnoremap <C-S-C> "+y
"vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
"map <C-S-V> "+gP
"map <S-Insert> "+gP

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>       "+gP
map <S-Insert>      "+gP

cmap <C-V>      <C-R>+
cmap <S-Insert>     <C-R>+

set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a     

" Initialize plugin system
call plug#end()
