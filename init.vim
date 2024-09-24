call plug#begin('~/.config/nvim/plugged')
    "SuperTab (that like autocomplete but i don't know )
        Plug 'ervandew/supertab'
    "Emmet 
        Plug 'mattn/emmet-vim'
    "autopair (auto closing brackets) 
        Plug 'jiangmiao/auto-pairs' 
    "Autosave 
        "Plug '907th/vim-auto-save'
    "Easy rename tag in html
        Plug 'andrewradev/tagalong.vim'
    call plug#end()

"vim preferences 
set nu
set rnu
set cursorline
colo github_dark_default
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set path+=**



"Autocomplete
set completeopt=menuone,noinsert,noselect
set shortmess+=c

 
filetype plugin indent on
"Auto commands 
 autocmd TextChanged * :w
 autocmd TextChangedI * :w
 
"Keybindings
nnoremap <F2> :find  
nnoremap <F4> :tabnew 
nnoremap <F5> :vs 
nnoremap \\ :noh <CR> 


let g:netrw_winsize=30 " percentage of window width

"My snippets"
nnoremap \html :read ~/.config/nvim/snippets/index.html<CR>
nnoremap \php :read ~/.config/nvim/snippets/index.php<CR>
nnoremap \for :read ~/.config/nvim/snippets/for.php<CR>
nnoremap <F9> :tabnew <CR>



" vim native autoformat preferences ( i disabled it )
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"emmet preferences
let g:user_emmet_leader_key=','

"Autosave settings 
let g:auto_save = 1  " enable AutoSave on Vim startup
