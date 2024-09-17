call plug#begin('~/.config/nvim/plugged')
    "Autosave 
        Plug '907th/vim-auto-save'
    "autopair (auto closing brackets) 
        Plug 'jiangmiao/auto-pairs' 
    "SuperTab (that like autocomplete but i don't know )
        Plug 'ervandew/supertab'
    "Emmet 
        Plug 'mattn/emmet-vim'
    "fuzzyfinder 
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf'
    call plug#end()

"vim preferences 
set lazyredraw
set nu
set rnu
let g:RltvNmbr=1
syntax on 
colo elflord
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
