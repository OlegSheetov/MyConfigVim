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
    "Nvim cmp    
        Plug 'hrsh7th/nvim-cmp'        " Основной плагин автодополнения
        Plug 'hrsh7th/cmp-nvim-lsp'    " Источник для LSP
        Plug 'hrsh7th/cmp-buffer'      " Источник для буфера
        Plug 'hrsh7th/cmp-path'        " Источник для путей
        Plug 'hrsh7th/cmp-cmdline'     " Источник для командной строки
        Plug 'neovim/nvim-lspconfig'   " Конфигурация LSP

    "greenvision
        Plug 'vim-scripts/greenvision'

    " Use release branch (recommended)
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

        " Or build from source code by using npm
        Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
    "Show indent lines for python 
        Plug 'yggdroot/indentline'
    call plug#end()

    
"vim preferences 
set nu
set rnu
set cursorline
colo greenvision
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set path+=**



"Autocomplete
set completeopt=menuone,noinsert,noselect
set shortmess+=c

 
filetype plugin indent on

" Автосохранение, если файл не в режиме только для чтения
autocmd TextChanged * if &modifiable && !&readonly | :w | endif
autocmd TextChangedI * if &modifiable && !&readonly | :w | endif
  
"Keybindings
nnoremap <F1> :!python3 %  <CR>
nnoremap <F2> :find  
nnoremap <F4> :Explore <CR>  
nnoremap <F3> :tabnew <CR>
nnoremap \\ :noh <CR> 
nnoremap \phpl  :!php -l %<CR>

let g:netrw_winsize=30 " percentage of window width

"My snippets"
nnoremap \html :read ~/.config/nvim/snippets/index.html<CR>
nnoremap <F9> :tabnew <CR>



" vim native autoformat preferences ( i disabled it )
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"emmet preferences
let g:user_emmet_leader_key=','

"Autosave settings 
let g:auto_save = 1  " enable AutoSave on Vim startup

let g:indentLine_defaultGroup = 'SpecialKey'

"Nvim cmp setup
lua << EOF
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- используйте свой сниппет-менеджер
        end,
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
})
EOF


lua << EOF
require'lspconfig'.pyright.setup{}
EOF








