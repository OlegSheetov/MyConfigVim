call plug#begin('~/.config/nvim/plugged')
    "SuperTab (that like autocomplete but i don't know )
        Plug 'ervandew/supertab'
    "Emmet 
        Plug 'mattn/emmet-vim'
    "autopair (auto closing brackets) 
        Plug 'jiangmiao/auto-pairs' 
    "Autosave 
        Plug '907th/vim-auto-save'


    call plug#end()

"vim preferences 
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
nnoremap <F3> :Lex <CR> 
nnoremap <F4> :tabnew <CR>
let g:netrw_winsize=30 " percentage of window width

"My snippets"
nnoremap \html :read ~/.config/nvim/snippets/index.html<CR>
nnoremap \php :read ~/.config/nvim/snippets/index.php<CR>

let g:netrw_winsize=30 " percentage of window width
nnoremap <F9> :tabnew <CR>
" vim native autoformat preferences ( i disabled it )
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"emmet preferences
let g:user_emmet_leader_key=','

"Autosave preferences 
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
