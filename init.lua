-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Additional vim config for plugins which don't find for lua and packer. 
vim.cmd('source ~/.config/nvim/additional_config.vim')
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}


    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        highlight = {
            enabled = true
        }
    }

	 local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<F3>', builtin.find_files, {})

use {
    "williamboman/mason.nvim"
}

use("keyvchan/monokai.nvim")

vim.opt.relativenumber = true 
vim.opt.lazyredraw = true

use({
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme monokai')
  end
})
use({
  "okuuva/auto-save.nvim",
  config = function()
   require("auto-save").setup {
     -- your config goes here
     -- or just leave it empty :)
   }
  end,
})

use 'm4xshen/autoclose.nvim'
require("autoclose").setup()

vim.api.nvim_set_keymap('n', '\\', ':noh<CR>', { noremap = true, silent = true })
 
vim.api.nvim_set_keymap('n', '<F5>', ':!pypy3 %<CR>', { noremap = true, silent = true })
-- chatgpt
use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
})

use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}
end)



