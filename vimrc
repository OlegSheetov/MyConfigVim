call plug#begin('~/.vim/plugged')
    "JSX syntax highlight 
        Plug 'mxw/vim-jsx'
    "Autosave 
        Plug '907th/vim-auto-save'
    "coloschemes... meant themes 
        Plug 'flazz/vim-colorschemes'
    "autopair (auto closing brackets) 
        Plug 'jiangmiao/auto-pairs' " airline 
        Plug 'vim-airline/vim-airline'
    " airline theme 
        Plug 'vim-airline/vim-airline-themes'
    "autorename tag for vim 
        Plug 'andrewradev/tagalong.vim'
    "Prettier
        Plug 'prettier/vim-prettier'
    "js highlight 
        Plug 'pangloss/vim-javascript'
    "jsdoc 
        Plug 'heavenshell/vim-jsdoc', {
          \ 'for': ['javascript', 'javascript.jsx','typescript'],
          \ 'do': 'make install'
        \}
    "SuperTab (that like autocomplete but i don't know )
        Plug 'ervandew/supertab'
    "Emmet 
        Plug 'mattn/emmet-vim'
    "fuzzyfinder 
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf'
    "jshit (static analyzer for vim) 
        Plug 'shutnik/jshint2.vim'
    call plug#end()

"vim preferences 
set nu
set rnu
let g:RltvNmbr=1
syntax on 
colo default 
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
nnoremap \ :noh <CR> 
set hlsearch 
set wildmenu
set wildmode=longest,list,full
nnoremap <F8> :Lex <CR> 
nnoremap <F7> :Vex <CR> 
let g:netrw_winsize=30 " percentage of window width
nnoremap <F9> :tabnew <CR>
"Omni complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" vim native autoformat preferences ( i disabled it )
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"airline theme 
let g:airline_theme='deus'

"Autosave preferences 
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

"Prettier config
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
nnoremap <F4> :Prettier <CR>

"js highlight preferences 
let g:javascript_plugin_jsdoc = 1 "highlight for jsdocs ( i should to find normal plugin for jsdocs XD )"

"jsdoc preferences 
nnoremap <F2> :JsDoc <CR> 
"emmet preferences
let g:user_emmet_leader_key=','
"fzf preferences 
nnoremap <F3> :FZF <CR> 
nnoremap <F5> :JSHint <CR> 
