
" ================== General Config =====================
syntax on
set number
set history=10000
set showcmd
set showmatch
set showmode
set autoread
set hlsearch
"set undofile
" ================== Indentation ========================= 
 
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap
set linebreak
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set nocompatible
set modelines=0
set t_Co=256 
set ofu=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-x><c-o>"
"    endif
"endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Forbidden to user Arrows
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <expr> <Tab> Smart_TabComplete()
" inoremap <tab> <c-r>=Smart_TabComplete()<CR>
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
nmap <leader>ne :NERDTree<cr>
nmap <leader>net :NERDTreeToggle<cr>
nmap <leader>nc :TagbarToggle<cr>
inoremap jk <ESC>
inoremap <ESC> <nop>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Forbidden to user Arrows
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>


colorscheme molokai_2
hi MatchParen cterm=bold ctermbg=none ctermfg=yellow

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on 
let g:Powerline_symbols = 'fancy'   " Powerline
let g:SuperTabDefaultCompletionType = "context"
"let g:Powerline_colorscheme  = 'default'
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
""improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
