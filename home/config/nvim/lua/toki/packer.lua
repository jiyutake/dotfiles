vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

   -- Treesitter / LSP
  use('nvim-treesitter/nvim-treesitter', {'run', ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('L3MON4D3/LuaSnip')

  --Lualine
  use {
	  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

  use {
	  'nvim-tree/nvim-tree.lua',
	  'nvim-tree/nvim-web-devicons',
      }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }}

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
  end}

  -- Colors setup
use ({ 'nyoom-engineering/oxocarbon.nvim', as = 'oxocarbon' })
use ({ 'catppuccin/nvim', as = 'catppuccin' })
use ({ 'navarasu/onedark.nvim' })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Some stuff to fix onedark.nvim to load with same style as alacritty.
require('onedark').setup {
    style = 'darker',
    transparent = true,
    lualine = {
	    transparent = true,
    }
}

-- EOF
end)
